
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_17__ {TYPE_2__* print; int config; int * panels; } ;
struct TYPE_16__ {TYPE_4__* view; TYPE_3__* model; } ;
struct TYPE_12__ {int h; } ;
struct TYPE_15__ {int refresh; int sy; TYPE_1__ pos; } ;
struct TYPE_14__ {int addr; int cache; } ;
struct TYPE_13__ {int cur; int cur_enabled; } ;
typedef int RPanels ;
typedef TYPE_5__ RPanel ;
typedef TYPE_6__ RCore ;
typedef int Direction ;






 int __cursor_left (TYPE_6__*) ;
 int __cursor_right (TYPE_6__*) ;
 TYPE_5__* __get_cur_panel (int *) ;
 int __set_panel_addr (TYPE_6__*,TYPE_5__*,int ) ;
 int r_config_get_i (int ,char*) ;

void __direction_hexdump_cb(void *user, int direction) {
 RCore *core = (RCore *)user;
 RPanels *panels = core->panels;
 RPanel *cur = __get_cur_panel (panels);
 int cols = r_config_get_i (core->config, "hex.cols");
 if (cols < 1) {
  cols = 16;
 }
 cur->view->refresh = 1;
 switch ((Direction)direction) {
 case 130:
  if (!core->print->cur) {
   cur->model->addr -= cols;
   core->print->cur += cols - 1;
  } else if (core->print->cur_enabled) {
   __cursor_left (core);
  } else {
   cur->model->addr--;
  }
  return;
 case 129:
  if (core->print->cur / cols + 1 > cur->view->pos.h - 5
    && core->print->cur % cols == cols - 1) {
   cur->model->addr += cols;
   core->print->cur -= cols - 1;
  } else if (core->print->cur_enabled) {
   __cursor_right (core);
  } else {
   cur->model->addr++;
  }
  return;
 case 128:
  if (!cur->model->cache) {
   if (core->print->cur_enabled) {
    if (!(core->print->cur / cols)) {
     cur->model->addr -= cols;
    } else {
     core->print->cur -= cols;
    }
   } else {
    if (cur->model->addr <= cols) {
     __set_panel_addr (core, cur, 0);
    } else {
     cur->model->addr -= cols;
    }
   }
  } else if (cur->view->sy > 0) {
   cur->view->sy--;
  }
  return;
 case 131:
  if (!cur->model->cache) {
   if (core->print->cur_enabled) {
    if (core->print->cur / cols + 1 > cur->view->pos.h - 5) {
     cur->model->addr += cols;
    } else {
     core->print->cur += cols;
    }
   } else {
    cur->model->addr += cols;
   }
  } else {
   cur->view->sy++;
  }
  return;
 }
}
