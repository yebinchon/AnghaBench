
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int menu_height; int menu_width; scalar_t__ in_use; scalar_t__ menu_is_active; } ;


 TYPE_1__ gui ;
 int gui_mch_set_menu_pos (int ,int ,int ,int ) ;

void
gui_position_menu()
{


    if (gui.menu_is_active && gui.in_use)
 gui_mch_set_menu_pos(0, 0, gui.menu_width, gui.menu_height);

}
