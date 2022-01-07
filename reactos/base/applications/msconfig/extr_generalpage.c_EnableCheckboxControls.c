
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef int HWND ;
typedef int BOOL ;


 int EnableWindow (int ,int ) ;
 int GetDlgItem (int ,int ) ;
 int IDC_CBX_STARTUP_ITEM ;
 int IDC_CBX_SYSTEM_INI ;
 int IDC_CBX_SYSTEM_SERVICE ;

VOID
EnableCheckboxControls(HWND hDlg, BOOL bEnable)
{
    EnableWindow(GetDlgItem(hDlg, IDC_CBX_SYSTEM_INI), bEnable);
    EnableWindow(GetDlgItem(hDlg, IDC_CBX_SYSTEM_SERVICE), bEnable);
    EnableWindow(GetDlgItem(hDlg, IDC_CBX_STARTUP_ITEM), bEnable);
}
