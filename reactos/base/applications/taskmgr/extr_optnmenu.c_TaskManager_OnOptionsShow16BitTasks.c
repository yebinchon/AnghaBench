
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int Show16BitTasks; } ;
typedef int HMENU ;


 int CheckMenuItem (int ,int ,int) ;
 int FALSE ;
 int GetMenu (int ) ;
 int GetMenuState (int ,int ,int) ;
 int GetSubMenu (int ,int ) ;
 int ID_OPTIONS_SHOW16BITTASKS ;
 int MF_BYCOMMAND ;
 int MF_CHECKED ;
 int MF_UNCHECKED ;
 int OPTIONS_MENU_INDEX ;
 int RefreshProcessPage () ;
 int TRUE ;
 TYPE_1__ TaskManagerSettings ;
 int hMainWnd ;

void TaskManager_OnOptionsShow16BitTasks(void)
{
    HMENU hMenu;
    HMENU hOptionsMenu;

    hMenu = GetMenu(hMainWnd);
    hOptionsMenu = GetSubMenu(hMenu, OPTIONS_MENU_INDEX);
    if (GetMenuState(hOptionsMenu, ID_OPTIONS_SHOW16BITTASKS, MF_BYCOMMAND) & MF_CHECKED)
    {
        CheckMenuItem(hOptionsMenu, ID_OPTIONS_SHOW16BITTASKS, MF_BYCOMMAND|MF_UNCHECKED);
        TaskManagerSettings.Show16BitTasks = FALSE;
    }
    else
    {
        CheckMenuItem(hOptionsMenu, ID_OPTIONS_SHOW16BITTASKS, MF_BYCOMMAND|MF_CHECKED);
        TaskManagerSettings.Show16BitTasks = TRUE;
    }




    RefreshProcessPage();
}
