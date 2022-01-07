
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* panels; } ;
struct TYPE_6__ {int n_panels; } ;
typedef TYPE_1__ RPanels ;
typedef int RPanel ;
typedef TYPE_2__ RCore ;


 int __del_panel (TYPE_2__*,int) ;
 int __dismantle_panel (TYPE_1__*,int *) ;

void __dismantle_del_panel(RCore *core, RPanel *p, int pi) {
 RPanels *panels = core->panels;
 if (panels->n_panels <= 1) {
  return;
 }
 __dismantle_panel (panels, p);
 __del_panel (core, pi);
}
