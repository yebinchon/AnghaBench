
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int panels; } ;
struct TYPE_6__ {TYPE_1__* view; } ;
struct TYPE_5__ {int refresh; int sy; int sx; } ;
typedef TYPE_2__ RPanel ;
typedef TYPE_3__ RCore ;
typedef int Direction ;






 TYPE_2__* __get_cur_panel (int ) ;

void __direction_default_cb(void *user, int direction) {
 RCore *core = (RCore *)user;
 RPanel *cur = __get_cur_panel (core->panels);
 cur->view->refresh = 1;
 switch ((Direction)direction) {
 case 130:
  if (cur->view->sx > 0) {
   cur->view->sx--;
  }
  return;
 case 129:
  cur->view->sx++;
  return;
 case 128:
  if (cur->view->sy > 0) {
   cur->view->sy--;
  }
  return;
 case 131:
  cur->view->sy++;
  return;
 }
}
