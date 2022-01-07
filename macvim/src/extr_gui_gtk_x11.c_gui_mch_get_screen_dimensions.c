
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * mainwin; } ;
typedef int GdkScreen ;


 int * gdk_screen_get_default () ;
 int gdk_screen_get_height (int *) ;
 int gdk_screen_get_width (int *) ;
 int gdk_screen_height () ;
 int gdk_screen_width () ;
 scalar_t__ get_menu_tool_height () ;
 scalar_t__ get_menu_tool_width () ;
 int * gtk_widget_get_screen (int *) ;
 scalar_t__ gtk_widget_has_screen (int *) ;
 TYPE_1__ gui ;
 int p_ghr ;

void
gui_mch_get_screen_dimensions(int *screen_w, int *screen_h)
{
    *screen_w = gdk_screen_width();


    *screen_h = gdk_screen_height() - p_ghr;
    *screen_w -= get_menu_tool_width();
    *screen_h -= get_menu_tool_height();
}
