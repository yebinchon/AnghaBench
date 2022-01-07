
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int hMainWnd; int ref_count; } ;
typedef TYPE_1__ WINHELP_WINDOW ;
typedef int BOOL ;


 int DestroyWindow (int ) ;
 int FALSE ;
 int TRUE ;
 int WINE_TRACE (char*,TYPE_1__*,int ) ;

BOOL WINHELP_ReleaseWindow(WINHELP_WINDOW* win)
{
    WINE_TRACE("Release %p#%d--\n", win, win->ref_count);

    if (!--win->ref_count)
    {
        DestroyWindow(win->hMainWnd);
        return FALSE;
    }
    return TRUE;
}
