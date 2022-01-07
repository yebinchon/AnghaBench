
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;
typedef int WCHAR ;
typedef int LPARAM ;
typedef int HWND ;
typedef int DWORD ;


 int GetDlgItem (int ,int ) ;
 int ID_DWL_STATUS ;
 int LoadStringW (int ,int ,int *,int) ;
 int SendMessageW (int ,int ,int ,int ) ;
 int WM_SETTEXT ;
 int hApplet ;
 int install_dialog ;

__attribute__((used)) static void set_status(DWORD id)
{
    HWND status = GetDlgItem(install_dialog, ID_DWL_STATUS);
    WCHAR buf[64];

    LoadStringW(hApplet, id, buf, sizeof(buf)/sizeof(WCHAR));
    SendMessageW(status, WM_SETTEXT, 0, (LPARAM)buf);
}
