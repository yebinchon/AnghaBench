
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_12__ {TYPE_2__* print; int panels; } ;
struct TYPE_11__ {TYPE_1__* model; } ;
struct TYPE_10__ {int cur; } ;
struct TYPE_9__ {int addr; } ;
typedef TYPE_2__ RPrint ;
typedef TYPE_3__ RPanel ;
typedef TYPE_4__ RCore ;


 int PANEL_CMD_DISASSEMBLY ;
 int PANEL_CMD_REGISTERS ;
 int PANEL_CMD_STACK ;
 scalar_t__ __check_panel_type (TYPE_3__*,int ) ;
 int __fix_cursor_down (TYPE_4__*) ;
 TYPE_3__* __get_cur_panel (int ) ;

void __cursor_right(RCore *core) {
 RPanel *cur = __get_cur_panel (core->panels);
 RPrint *print = core->print;
 if (__check_panel_type (cur, PANEL_CMD_STACK) && print->cur >= 15) {
  return;
 }
 if (__check_panel_type (cur, PANEL_CMD_REGISTERS)
   || __check_panel_type (cur, PANEL_CMD_STACK)) {
  print->cur++;
  cur->model->addr++;
 } else if (__check_panel_type (cur, PANEL_CMD_DISASSEMBLY)) {
  print->cur++;
  __fix_cursor_down (core);
 } else {
  print->cur++;
 }
}
