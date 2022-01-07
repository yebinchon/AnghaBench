
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef int PNMMCCAUTOUPDATE ;
typedef int HWND ;


 int FillMonthsComboBox (int ) ;
 int GetDlgItem (int ,int ) ;
 int IDC_MONTHCB ;
 int UNREFERENCED_PARAMETER (int ) ;

__attribute__((used)) static VOID
AutoUpdateMonthCal(HWND hwndDlg,
                   PNMMCCAUTOUPDATE lpAutoUpdate)
{
    UNREFERENCED_PARAMETER(lpAutoUpdate);


    FillMonthsComboBox(GetDlgItem(hwndDlg,
                                  IDC_MONTHCB));
}
