
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_13__ {TYPE_3__* print; int offset; int config; int * panels; } ;
struct TYPE_12__ {TYPE_4__* view; TYPE_2__* model; } ;
struct TYPE_8__ {int h; } ;
struct TYPE_11__ {int refresh; int curpos; int sy; int sx; TYPE_1__ pos; } ;
struct TYPE_10__ {int cur_enabled; } ;
struct TYPE_9__ {int addr; } ;
typedef int RPanels ;
typedef TYPE_5__ RPanel ;
typedef TYPE_6__ RCore ;
typedef int Direction ;






 TYPE_5__* __get_cur_panel (int *) ;
 int r_config_get_i (int ,char*) ;

void __direction_panels_cursor_cb(void *user, int direction) {
 RCore *core = (RCore *)user;
 RPanels *panels = core->panels;
 RPanel *cur = __get_cur_panel (panels);
 cur->view->refresh = 1;
 const int THRESHOLD = cur->view->pos.h / 3;
 int sub;
 switch ((Direction)direction) {
 case 130:
  if (core->print->cur_enabled) {
   return;
  }
  if (cur->view->sx > 0) {
   cur->view->sx -= r_config_get_i (core->config, "graph.scroll");
  }
  return;
 case 129:
  if (core->print->cur_enabled) {
   return;
  }
  cur->view->sx += r_config_get_i (core->config, "graph.scroll");
  return;
 case 128:
  if (core->print->cur_enabled) {
   if (cur->view->curpos > 0) {
    cur->view->curpos--;
   }
   if (cur->view->sy > 0) {
    sub = cur->view->curpos - cur->view->sy;
    if (sub < 0) {
     cur->view->sy--;
    }
   }
  } else {
   if (cur->view->sy > 0) {
    cur->view->curpos -= 1;
    cur->view->sy -= 1;
   }
  }
  return;
 case 131:
  core->offset = cur->model->addr;
  if (core->print->cur_enabled) {
   cur->view->curpos++;
   sub = cur->view->curpos - cur->view->sy;
   if (sub > THRESHOLD) {
    cur->view->sy++;
   }
  } else {
   cur->view->curpos += 1;
   cur->view->sy += 1;
  }
  return;
 }
}
