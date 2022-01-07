
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef int * PINT ;
typedef int INT ;
typedef int HWND ;


 int CB_GETCURSEL ;
 int SendDlgItemMessageW (int ,int ,int ,int ,int ) ;

VOID
GetSelectedComboBoxIndex(
    HWND hwndDlg,
    INT nIdDlgItem,
    PINT pValue)
{
    *pValue = SendDlgItemMessageW(hwndDlg, nIdDlgItem, CB_GETCURSEL, 0, 0);
}
