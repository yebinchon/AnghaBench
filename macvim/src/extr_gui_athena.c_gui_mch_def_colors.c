
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int char_u ;
struct TYPE_2__ {scalar_t__ rsrc_tooltip_bg_name; void* tooltip_bg_pixel; scalar_t__ rsrc_tooltip_fg_name; void* tooltip_fg_pixel; scalar_t__ rsrc_scroll_bg_name; void* scroll_bg_pixel; scalar_t__ rsrc_scroll_fg_name; void* scroll_fg_pixel; scalar_t__ rsrc_menu_bg_name; void* menu_bg_pixel; scalar_t__ rsrc_menu_fg_name; void* menu_fg_pixel; scalar_t__ in_use; } ;


 TYPE_1__ gui ;
 void* gui_get_color (int *) ;

void
gui_mch_def_colors()
{




    if (gui.in_use)
    {
 gui.menu_fg_pixel = gui_get_color((char_u *)gui.rsrc_menu_fg_name);
 gui.menu_bg_pixel = gui_get_color((char_u *)gui.rsrc_menu_bg_name);
 gui.scroll_fg_pixel = gui_get_color((char_u *)gui.rsrc_scroll_fg_name);
 gui.scroll_bg_pixel = gui_get_color((char_u *)gui.rsrc_scroll_bg_name);




    }
}
