
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_12__ {TYPE_2__* print; int panels; } ;
struct TYPE_11__ {TYPE_1__* view; } ;
struct TYPE_10__ {int cur_enabled; int col; int cur; } ;
struct TYPE_9__ {int curpos; } ;
typedef TYPE_2__ RPrint ;
typedef TYPE_3__ RPanel ;
typedef TYPE_4__ RCore ;


 TYPE_3__* __get_cur_panel (int ) ;
 scalar_t__ __is_abnormal_cursor_type (TYPE_4__*,TYPE_3__*) ;

void __set_cursor(RCore *core, bool cur) {
 RPanel *p = __get_cur_panel (core->panels);
 RPrint *print = core->print;
 print->cur_enabled = cur;
 if (__is_abnormal_cursor_type (core, p)) {
  return;
 }
 if (cur) {
  print->cur = p->view->curpos;
 } else {
  p->view->curpos = print->cur;
 }
 print->col = print->cur_enabled ? 1: 0;
}
