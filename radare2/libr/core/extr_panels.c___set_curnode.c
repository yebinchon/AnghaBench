
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* panels; } ;
struct TYPE_4__ {int n_panels; int curnode; } ;
typedef TYPE_1__ RPanels ;
typedef TYPE_2__ RCore ;



void __set_curnode(RCore *core, int idx) {
 RPanels *panels = core->panels;
 if (idx >= panels->n_panels) {
  idx = 0;
 }
 if (idx < 0) {
  idx = panels->n_panels - 1;
 }
 panels->curnode = idx;
}
