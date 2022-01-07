
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int ut64 ;
struct TYPE_11__ {TYPE_2__* panels; } ;
struct TYPE_10__ {TYPE_1__* model; } ;
struct TYPE_9__ {int n_panels; } ;
struct TYPE_8__ {int addr; } ;
typedef TYPE_2__ RPanels ;
typedef TYPE_3__ RPanel ;
typedef TYPE_4__ RCore ;


 TYPE_3__* __get_panel (TYPE_2__*,int) ;

void __seek_all(RCore *core, ut64 addr) {
 RPanels *panels = core->panels;
 int i;
 for (i = 0; i < panels->n_panels; i++) {
  RPanel *panel = __get_panel (panels, i);
  panel->model->addr = addr;
 }
}
