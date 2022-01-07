
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef int TCHAR ;
typedef int LPTSTR ;
typedef int LPARAM ;
typedef scalar_t__ INT ;
typedef int HWND ;


 int ARRAYSIZE (int *) ;
 int CB_ADDSTRING ;
 int LoadString (int ,scalar_t__,int ,int ) ;
 int SendDlgItemMessage (int ,scalar_t__,int ,int ,int ) ;
 int hApplet ;

__attribute__((used)) static VOID
AddToCombobox(INT Combo, HWND hwndDlg, INT From, INT To)
{
    INT iElement;
    TCHAR tstrText[80];

    for (iElement = From; iElement <= To; iElement++)
    {
        LoadString(hApplet, iElement, (LPTSTR)tstrText, ARRAYSIZE(tstrText));
        SendDlgItemMessage(hwndDlg, Combo, CB_ADDSTRING, 0, (LPARAM)tstrText);
    }
}
