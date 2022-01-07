
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef unsigned int long_u ;
typedef scalar_t__ guicolor_T ;
struct TYPE_5__ {int drawarea; } ;
struct TYPE_4__ {scalar_t__ blue; scalar_t__ green; scalar_t__ red; } ;
typedef TYPE_1__ GdkColor ;


 int gdk_colormap_query_color (int ,unsigned long,TYPE_1__*) ;
 int gtk_widget_get_colormap (int ) ;
 TYPE_2__ gui ;

long_u
gui_mch_get_rgb(guicolor_T pixel)
{
    GdkColor color;
    gdk_colormap_query_color(gtk_widget_get_colormap(gui.drawarea),
        (unsigned long)pixel, &color);

    return (((unsigned)color.red & 0xff00) << 8)
  | ((unsigned)color.green & 0xff00)
  | (((unsigned)color.blue & 0xff00) >> 8);
}
