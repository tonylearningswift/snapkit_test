import UIKit
import SnapKit

class ViewController: UIViewController {
    //MARK: - IBOutlets
    let bigSquareView = UIView()
    //MARK: - var/let
    
    //MARK: - lifecycle funcs
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidLayoutSubviews() {
        self.initialConfig()
    }
    //MARK: - IBActions
    
    //MARK: - flow funcs
    func initialConfig() {
        self.configBigSquareView()
        self.configLittleSquares()
    }
    
    func configBigSquareView() {
        self.view.addSubview(self.bigSquareView)
        self.bigSquareView.backgroundColor = .purple
        self.bigSquareView.snp.makeConstraints {
            (make) -> Void in
            make.left.equalTo(self.view).offset(20)
            make.right.equalTo(self.view).offset(-20)
            make.width.equalTo(bigSquareView.snp.height)
            make.centerY.equalToSuperview()
        }
    }
    
    func configLittleSquares() {
        //all squares configure at two strings - two sides are equal to superview, two others divided by 2
        //creating and configure top left square
        let topLeftSquare = UIView()
        self.bigSquareView.addSubview(topLeftSquare)
        topLeftSquare.backgroundColor = .systemCyan
        
        topLeftSquare.snp.makeConstraints {
            (make) -> Void in
            make.left.top.equalToSuperview()
            make.width.height.equalToSuperview().dividedBy(2)
        }
        //creating and configure top right square
        let topRightSquare = UIView()
        self.bigSquareView.addSubview(topRightSquare)
        topRightSquare.backgroundColor = .systemMint
        
        topRightSquare.snp.makeConstraints{
            (make) -> Void in
            make.top.right.equalToSuperview()
            make.height.width.equalToSuperview().dividedBy(2)
        }
        //creating and configure bottom right square
        let bottomRightSquare = UIView()
        self.bigSquareView.addSubview(bottomRightSquare)
        bottomRightSquare.backgroundColor = .systemIndigo
        
        bottomRightSquare.snp.makeConstraints {
            (make) -> Void in
            make.bottom.right.equalToSuperview()
            make.height.width.equalToSuperview().dividedBy(2)
        }
        //creating and configure bottom left square
        let bottomLeftSquare = UIView()
        self.bigSquareView.addSubview(bottomLeftSquare)
        bottomLeftSquare.backgroundColor = .systemOrange
        
        bottomLeftSquare.snp.makeConstraints{
            (make) -> Void in
            make.left.bottom.equalToSuperview()
            make.width.height.equalToSuperview().dividedBy(2)
        }
        
    }
}

