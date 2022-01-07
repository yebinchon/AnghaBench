
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int ut64 ;
struct TYPE_13__ {TYPE_2__* panels; } ;
struct TYPE_12__ {TYPE_3__* view; TYPE_1__* model; } ;
struct TYPE_11__ {int refresh; } ;
struct TYPE_10__ {scalar_t__ autoUpdate; } ;
struct TYPE_9__ {int addr; } ;
typedef TYPE_4__ RPanel ;
typedef TYPE_5__ RCore ;


 int __set_refresh_all (TYPE_5__*,int,int) ;

void __set_panel_addr(RCore *core, RPanel *panel, ut64 addr) {
 panel->model->addr = addr;

 if (core->panels->autoUpdate) {
  __set_refresh_all (core, 0, 0);
  return;
 }
 panel->view->refresh = 1;
}
