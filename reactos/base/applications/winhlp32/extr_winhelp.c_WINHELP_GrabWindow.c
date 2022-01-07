
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int ref_count; } ;
typedef TYPE_1__ WINHELP_WINDOW ;


 int WINE_TRACE (char*,TYPE_1__*,int ) ;

WINHELP_WINDOW* WINHELP_GrabWindow(WINHELP_WINDOW* win)
{
    WINE_TRACE("Grab %p#%d++\n", win, win->ref_count);
    win->ref_count++;
    return win;
}
