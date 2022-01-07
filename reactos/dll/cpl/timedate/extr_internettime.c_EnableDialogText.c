
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef scalar_t__ UINT ;
typedef int HWND ;
typedef int BOOL ;


 int BM_GETCHECK ;
 scalar_t__ BST_CHECKED ;
 int EnableWindow (int ,int ) ;
 int FALSE ;
 int GetDlgItem (int ,int ) ;
 int IDC_AUTOSYNC ;
 int IDC_NEXTSYNC ;
 int IDC_SERVERLIST ;
 int IDC_SERVERTEXT ;
 int IDC_SUCSYNC ;
 int IDC_UPDATEBUTTON ;
 scalar_t__ SendDlgItemMessageW (int ,int ,int ,int ,int ) ;
 int TRUE ;

__attribute__((used)) static VOID
EnableDialogText(HWND hwnd)
{
    BOOL bChecked;
    UINT uCheck;

    uCheck = (UINT)SendDlgItemMessageW(hwnd, IDC_AUTOSYNC, BM_GETCHECK, 0, 0);
    bChecked = (uCheck == BST_CHECKED) ? TRUE : FALSE;

    EnableWindow(GetDlgItem(hwnd, IDC_SERVERTEXT), bChecked);
    EnableWindow(GetDlgItem(hwnd, IDC_SERVERLIST), bChecked);
    EnableWindow(GetDlgItem(hwnd, IDC_UPDATEBUTTON), bChecked);
    EnableWindow(GetDlgItem(hwnd, IDC_SUCSYNC), bChecked);
    EnableWindow(GetDlgItem(hwnd, IDC_NEXTSYNC), bChecked);
}
