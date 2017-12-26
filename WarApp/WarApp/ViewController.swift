//
//  ViewController.swift
//  WarApp
//
//  Created by Tassia Paschoal on 12/25/17.
//  Copyright © 2017 Tassia Paschoal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var leftImageView: UIImageView!
    
    @IBOutlet weak var rightImageView: UIImageView!
    
    @IBOutlet weak var leftScoreLabel: UILabel!
    
    @IBOutlet weak var rightScoreLabel: UILabel!
    
    var leftScore:Int32 = 0
    var rightScore:Int32 = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func dealTapped(_ sender: Any) {
        let leftRandomNumber = arc4random_uniform(13) + 2
        //print("left random number is: \(leftRandomNumber)")
        
        let rightRandomNumber = arc4random_uniform(13) + 2
        //print("right random number is: \(rightRandomNumber)")
        leftImageView.image = UIImage(named: "card\(leftRandomNumber)")
        rightImageView.image = UIImage(named: "card\(rightRandomNumber)")
        
        if leftRandomNumber > rightRandomNumber {
            //update the score
            leftScore += 1
            //update the label
            leftScoreLabel.text = String(leftScore)
        } else if rightRandomNumber > leftRandomNumber{
            rightScore += 1
            rightScoreLabel.text = String(rightScore)
        } else if leftRandomNumber == rightRandomNumber {
            //no score changes
        }
    }
    
    
}

