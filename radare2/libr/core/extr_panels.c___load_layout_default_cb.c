
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {TYPE_1__* panels_menu; } ;
struct TYPE_10__ {TYPE_5__* panels; } ;
struct TYPE_9__ {int depth; } ;
typedef TYPE_2__ RCore ;


 int PANEL_MODE_DEFAULT ;
 int __create_default_panels (TYPE_2__*) ;
 int __init_panels (TYPE_2__*,TYPE_5__*) ;
 int __panels_layout (TYPE_5__*) ;
 int __set_mode (TYPE_2__*,int ) ;
 int __set_refresh_all (TYPE_2__*,int,int) ;

int __load_layout_default_cb(void *user) {
 RCore *core = (RCore *)user;
 __init_panels (core, core->panels);
 __create_default_panels (core);
 __panels_layout (core->panels);
 __set_refresh_all (core, 0, 0);
 core->panels->panels_menu->depth = 1;
 __set_mode (core, PANEL_MODE_DEFAULT);
 return 0;
}
