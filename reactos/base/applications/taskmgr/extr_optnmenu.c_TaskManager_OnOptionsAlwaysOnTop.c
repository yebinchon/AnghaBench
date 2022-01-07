
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int AlwaysOnTop; } ;
typedef int HMENU ;


 int CheckMenuItem (int ,int ,int) ;
 int FALSE ;
 int GWL_EXSTYLE ;
 int GetMenu (int ) ;
 int GetSubMenu (int ,int ) ;
 int GetWindowLongPtrW (int ,int ) ;
 int HWND_NOTOPMOST ;
 int HWND_TOPMOST ;
 int ID_OPTIONS_ALWAYSONTOP ;
 int MF_BYCOMMAND ;
 int MF_CHECKED ;
 int MF_UNCHECKED ;
 int OPTIONS_MENU_INDEX ;
 int SWP_NOMOVE ;
 int SWP_NOSIZE ;
 int SetWindowPos (int ,int ,int ,int ,int ,int ,int) ;
 int TRUE ;
 TYPE_1__ TaskManagerSettings ;
 int WS_EX_TOPMOST ;
 int hMainWnd ;

void TaskManager_OnOptionsAlwaysOnTop(void)
{
    HMENU hMenu;
    HMENU hOptionsMenu;

    hMenu = GetMenu(hMainWnd);
    hOptionsMenu = GetSubMenu(hMenu, OPTIONS_MENU_INDEX);





    if ((GetWindowLongPtrW(hMainWnd, GWL_EXSTYLE) & WS_EX_TOPMOST) != 0)
    {
        CheckMenuItem(hOptionsMenu, ID_OPTIONS_ALWAYSONTOP, MF_BYCOMMAND|MF_UNCHECKED);
        TaskManagerSettings.AlwaysOnTop = FALSE;
        SetWindowPos(hMainWnd, HWND_NOTOPMOST, 0, 0, 0, 0, SWP_NOMOVE|SWP_NOSIZE);
    }
    else
    {
        CheckMenuItem(hOptionsMenu, ID_OPTIONS_ALWAYSONTOP, MF_BYCOMMAND|MF_CHECKED);
        TaskManagerSettings.AlwaysOnTop = TRUE;
        SetWindowPos(hMainWnd, HWND_TOPMOST, 0, 0, 0, 0, SWP_NOMOVE|SWP_NOSIZE);
    }
}
