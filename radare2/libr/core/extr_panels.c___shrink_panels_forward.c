
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* panels; } ;
struct TYPE_4__ {int n_panels; int * panel; } ;
typedef TYPE_1__ RPanels ;
typedef TYPE_2__ RCore ;



void __shrink_panels_forward(RCore *core, int target) {
 RPanels *panels = core->panels;
 int i = target;
 for (; i < panels->n_panels - 1; i++) {
  panels->panel[i] = panels->panel[i + 1];
 }
}
