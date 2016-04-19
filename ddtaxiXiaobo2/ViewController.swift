//
//  ViewController.swift
//  ddtaxiXiaobo2
//
//  Created by 小波 on 16/4/18.
//  Copyright © 2016年 xiaobo. All rights reserved.
//

import UIKit

class ViewController: UIViewController,DIOpenSDKDelegate {
    
    func pageClose() {
        print("用户关闭了打车界面！")
    }
    
    @IBAction func startDdtaxi(sender: UIButton) {
        DIOpenSDK.registerApp("test", secret: "test")
        
        let option = DIOpenSDKRegisterOptions()
        
        DIOpenSDK.showDDPage(self, animated: true, params: option, delegate: self)
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

