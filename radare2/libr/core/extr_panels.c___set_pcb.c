
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* model; } ;
struct TYPE_5__ {void* print_cb; int cmd; } ;
typedef TYPE_2__ RPanel ;


 int PANEL_CMD_DECOMPILER ;
 int PANEL_CMD_DISASMSUMMARY ;
 int PANEL_CMD_DISASSEMBLY ;
 int PANEL_CMD_GRAPH ;
 int PANEL_CMD_HEXDUMP ;
 int PANEL_CMD_STACK ;
 int PANEL_CMD_TINYGRAPH ;
 scalar_t__ __check_panel_type (TYPE_2__*,int ) ;
 void* __print_decompiler_cb ;
 void* __print_default_cb ;
 void* __print_disasmsummary_cb ;
 void* __print_disassembly_cb ;
 void* __print_graph_cb ;
 void* __print_hexdump_cb ;
 void* __print_stack_cb ;

void __set_pcb(RPanel *p) {
 if (!p->model->cmd) {
  return;
 }
 if (__check_panel_type (p, PANEL_CMD_DISASSEMBLY)) {
  p->model->print_cb = __print_disassembly_cb;
  return;
 }
 if (__check_panel_type (p, PANEL_CMD_STACK)) {
  p->model->print_cb = __print_stack_cb;
  return;
 }
 if (__check_panel_type (p, PANEL_CMD_HEXDUMP)) {
  p->model->print_cb = __print_hexdump_cb;
  return;
 }
 if (__check_panel_type (p, PANEL_CMD_DECOMPILER)) {
  p->model->print_cb = __print_decompiler_cb;
  return;
 }
 if (__check_panel_type (p, PANEL_CMD_GRAPH)) {
  p->model->print_cb = __print_graph_cb;
  return;
 }
 if (__check_panel_type (p, PANEL_CMD_TINYGRAPH)) {
  p->model->print_cb = __print_graph_cb;
  return;
 }
 if (__check_panel_type (p, PANEL_CMD_DISASMSUMMARY)) {
  p->model->print_cb = __print_disasmsummary_cb;
  return;
 }
 p->model->print_cb = __print_default_cb;
}
