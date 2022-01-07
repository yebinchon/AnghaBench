
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mainwin; } ;


 int GTK_WINDOW (int ) ;
 scalar_t__ get_menu_tool_height () ;
 scalar_t__ get_menu_tool_width () ;
 int gtk_window_get_size (int ,int*,int*) ;
 TYPE_1__ gui ;
 int gui_resize_shell (int,int) ;

void
gui_mch_newfont()
{
    int w, h;

    gtk_window_get_size(GTK_WINDOW(gui.mainwin), &w, &h);
    w -= get_menu_tool_width();
    h -= get_menu_tool_height();
    gui_resize_shell(w, h);
}
