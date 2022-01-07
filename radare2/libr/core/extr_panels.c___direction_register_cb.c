
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_13__ {TYPE_3__* print; TYPE_1__* dbg; int * panels; } ;
struct TYPE_12__ {TYPE_2__* view; } ;
struct TYPE_11__ {int cur; int cur_enabled; } ;
struct TYPE_10__ {int refresh; int sx; } ;
struct TYPE_9__ {int regcols; } ;
typedef int RPanels ;
typedef TYPE_4__ RPanel ;
typedef TYPE_5__ RCore ;
typedef int Direction ;






 int __cursor_left (TYPE_5__*) ;
 int __cursor_right (TYPE_5__*) ;
 TYPE_4__* __get_cur_panel (int *) ;

void __direction_register_cb(void *user, int direction) {
 RCore *core = (RCore *)user;
 RPanels *panels = core->panels;
 RPanel *cur = __get_cur_panel (panels);
 int cols = core->dbg->regcols;
 cols = cols > 0 ? cols : 3;
 cur->view->refresh = 1;
 switch ((Direction)direction) {
 case 130:
  if (core->print->cur_enabled) {
   __cursor_left (core);
  } else if (cur->view->sx > 0) {
   cur->view->sx--;
   cur->view->refresh = 1;
  }
  return;
 case 129:
  if (core->print->cur_enabled) {
   __cursor_right (core);
  } else {
   cur->view->sx++;
   cur->view->refresh = 1;
  }
  return;
 case 128:
  if (core->print->cur_enabled) {
   int tmp = core->print->cur;
   tmp -= cols;
   if (tmp >= 0) {
    core->print->cur = tmp;
   }
  }
  return;
 case 131:
  if (core->print->cur_enabled) {
   core->print->cur += cols;
  }
  return;
 }
}
