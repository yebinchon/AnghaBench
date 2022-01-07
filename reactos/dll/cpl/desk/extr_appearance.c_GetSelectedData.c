
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WPARAM ;
typedef int * PVOID ;
typedef scalar_t__ INT ;
typedef int HWND ;


 scalar_t__ CB_ERR ;
 int CB_GETCURSEL ;
 int CB_GETITEMDATA ;
 int GetDlgItem (int ,int) ;
 scalar_t__ SendMessage (int ,int ,int ,int ) ;

__attribute__((used)) static PVOID
GetSelectedData(HWND hwndDlg, int nIDDlgItem)
{
    HWND hwndCombo;
    INT sel;

    hwndCombo = GetDlgItem(hwndDlg, nIDDlgItem);
    sel = SendMessage(hwndCombo, CB_GETCURSEL, 0, 0);
    if (sel == CB_ERR)
        return ((void*)0);
    return (PVOID)SendMessage(hwndCombo, CB_GETITEMDATA, (WPARAM)sel, 0);
}
