
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mainwin; } ;


 int GTK_WINDOW (int ) ;
 int OK ;
 int gtk_window_get_position (int ,int*,int*) ;
 TYPE_1__ gui ;

int
gui_mch_get_winpos(int *x, int *y)
{
    gtk_window_get_position(GTK_WINDOW(gui.mainwin), x, y);
    return OK;
}
