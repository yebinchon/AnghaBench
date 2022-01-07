
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef int HWND ;
typedef int BOOL ;


 scalar_t__ BST_CHECKED ;
 int IDC_ICON_IN_TASKBAR ;
 scalar_t__ IsDlgButtonChecked (int ,int ) ;
 int SetSystrayVolumeIconState (int) ;

VOID
SaveData(HWND hwndDlg)
{
    BOOL bShowIcon;

    bShowIcon = (IsDlgButtonChecked(hwndDlg, IDC_ICON_IN_TASKBAR) == BST_CHECKED);

    SetSystrayVolumeIconState(bShowIcon);
}
