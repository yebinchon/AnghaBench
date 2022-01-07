
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ starting; scalar_t__ menu_is_active; } ;
struct TYPE_5__ {int bottom; int top; } ;
typedef TYPE_1__ RECT ;


 int FALSE ;
 int GetClientRect (int ,TYPE_1__*) ;
 int GetMenuItemCount (int ) ;
 int GetSystemMetrics (int ) ;
 int GetWindowRect (int ,TYPE_1__*) ;
 int IsZoomed (int ) ;
 int RESIZE_VERT ;
 int SM_CYCAPTION ;
 int SM_CYFRAME ;
 int SM_CYMENU ;
 TYPE_2__ gui ;
 int gui_set_shellsize (int ,int ,int ) ;
 int s_hwnd ;
 int s_menuBar ;

__attribute__((used)) static int
gui_mswin_get_menu_height(
    int fix_window)
{
    static int old_menu_height = -1;

    int num;
    int menu_height;

    if (gui.menu_is_active)
 num = GetMenuItemCount(s_menuBar);
    else
 num = 0;

    if (num == 0)
 menu_height = 0;
    else if (gui.starting)
 menu_height = GetSystemMetrics(SM_CYMENU);
    else
    {
 RECT r1, r2;
 int frameht = GetSystemMetrics(SM_CYFRAME);
 int capht = GetSystemMetrics(SM_CYCAPTION);







 GetWindowRect(s_hwnd, &r1);
 GetClientRect(s_hwnd, &r2);
 menu_height = r1.bottom - r1.top - (r2.bottom-r2.top +
          2 * frameht * (!IsZoomed(s_hwnd)) + capht);
    }

    if (fix_window && menu_height != old_menu_height)
    {
 old_menu_height = menu_height;
 gui_set_shellsize(FALSE, FALSE, RESIZE_VERT);
    }

    return menu_height;
}
