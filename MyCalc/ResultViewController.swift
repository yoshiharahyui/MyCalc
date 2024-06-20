//
//  ResultViewController.swift
//  MyCalc
//
//  Created by 吉原飛偉 on 2024/06/20.
//

import UIKit

class ResultViewController: UIViewController {

    //最初の画面で入力した金額を受け取るためのプロパティ
    var price: Int = 0
    //割引率をFloat型で準備
    let percentValue: Float = 0.1

    @IBOutlet weak var resultField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        //割引額を算出する式
        let waribikiPrice = Float(price) * percentValue
        //割引後の価格を算出する
        let percentOffPrice = price - Int(waribikiPrice)
        //結果を表示する
        resultField.text = "\(percentOffPrice)"
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
