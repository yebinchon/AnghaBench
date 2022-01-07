
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef int HWND ;
typedef int BOOL ;


 int EnableWindow (int ,int ) ;
 int GetDlgItem (int ,int ) ;
 int IDC_PROP_BUTTON ;
 int IDC_REMOVE_BUTTON ;
 int IDC_SET_DEFAULT ;

__attribute__((used)) static VOID
SetControlsState(HWND hwndDlg, BOOL bIsEnabled)
{
    EnableWindow(GetDlgItem(hwndDlg, IDC_REMOVE_BUTTON), bIsEnabled);
    EnableWindow(GetDlgItem(hwndDlg, IDC_PROP_BUTTON), bIsEnabled);
    EnableWindow(GetDlgItem(hwndDlg, IDC_SET_DEFAULT), bIsEnabled);
}
