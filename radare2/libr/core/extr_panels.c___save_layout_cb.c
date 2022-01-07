
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {TYPE_1__* view; } ;
struct TYPE_8__ {int panels; } ;
struct TYPE_7__ {int refresh; } ;
typedef TYPE_2__ RCore ;


 int PANEL_MODE_DEFAULT ;
 int __clear_panels_menu (TYPE_2__*) ;
 TYPE_5__* __get_cur_panel (int ) ;
 int __set_mode (TYPE_2__*,int ) ;
 int r_save_panels_layout (TYPE_2__*) ;

int __save_layout_cb(void *user) {
 RCore *core = (RCore *)user;
 r_save_panels_layout (core);
 __set_mode (core, PANEL_MODE_DEFAULT);
 __clear_panels_menu (core);
 __get_cur_panel (core->panels)->view->refresh = 1;
 return 0;
}
