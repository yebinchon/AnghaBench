
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_14__ {TYPE_3__* panels; } ;
struct TYPE_13__ {TYPE_1__* view; } ;
struct TYPE_12__ {int n_panels; } ;
struct TYPE_11__ {int w; int h; } ;
struct TYPE_10__ {TYPE_2__ pos; } ;
typedef TYPE_3__ RPanels ;
typedef TYPE_4__ RPanel ;
typedef TYPE_5__ RCore ;


 int __del_panel (TYPE_5__*,int) ;
 TYPE_4__* __get_panel (TYPE_3__*,int) ;

void __del_invalid_panels(RCore *core) {
 RPanels *panels = core->panels;
 int i;
 for (i = 1; i < panels->n_panels; i++) {
  RPanel *panel = __get_panel (panels, i);
  if (panel->view->pos.w < 2) {
   __del_panel (core, i);
   __del_invalid_panels (core);
   break;
  }
  if (panel->view->pos.h < 2) {
   __del_panel (core, i);
   __del_invalid_panels (core);
   break;
  }
 }
}
