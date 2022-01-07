
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* mainwin; } ;
struct TYPE_3__ {int * window; } ;


 int GDK_WINDOW_STATE_MAXIMIZED ;
 int gdk_window_get_state (int *) ;
 TYPE_2__ gui ;

int
gui_mch_maximized()
{
    return (gui.mainwin != ((void*)0) && gui.mainwin->window != ((void*)0)
     && (gdk_window_get_state(gui.mainwin->window)
            & GDK_WINDOW_STATE_MAXIMIZED));
}
