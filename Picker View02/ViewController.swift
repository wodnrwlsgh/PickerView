import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    var color = ["Red","Black","Green"]
    var number = ["1","2","3","4"]
    @IBOutlet weak var pickerView: UIPickerView!
    @IBOutlet weak var pickerText: UILabel!
    @IBOutlet weak var pickerText1: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //pickerview에 delegate, dataSoure 적용
        pickerView.delegate = self
        pickerView.dataSource = self
        pickerText.text = color[0]
        pickerText1.text = number[0]
    }
    
    public func numberOfComponents(in pickerView: UIPickerView) -> Int{
        return 2
    }//picker 갯수
    
    public func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int
    {
        if component == 0{
            return 3
        }
        else {
            return 4
        }
    }//처음 picker은 목록 3개, 두번째는 4개
    public func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String?
    {
        if component == 0{
            return color[row]
        }
        else{
            return number[row]
        }
    }//picker component 0,1에 값 삽입
    public func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int){
        if component == 0{
            pickerText.text = color[row]}
        else{
            pickerText1.text = number[row]
        }}//데이터피크를 처음껄 선택하면 pickerText의 텍스트를 선택한걸로 변경 데이터피크 두번째껄 선택하면 pickerText1의 텍스트를 변경
}
