
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_7__ ;
typedef struct TYPE_25__ TYPE_5__ ;
typedef struct TYPE_24__ TYPE_4__ ;
typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;


typedef scalar_t__ ut64 ;
struct TYPE_26__ {int n_panels; } ;
struct TYPE_25__ {TYPE_7__* panels; int config; TYPE_1__* anal; scalar_t__ const offset; } ;
struct TYPE_24__ {TYPE_2__* view; TYPE_3__* model; } ;
struct TYPE_23__ {scalar_t__ baseAddr; void* cmd; void* title; int * funcName; int * rotateCb; scalar_t__ rotate; int type; } ;
struct TYPE_22__ {int refresh; scalar_t__ curpos; } ;
struct TYPE_21__ {int reg; } ;
typedef TYPE_2__ RPanelView ;
typedef TYPE_3__ RPanelModel ;
typedef TYPE_4__ RPanel ;
typedef TYPE_5__ RCore ;


 int PANEL_CMD_STACK ;
 int PANEL_TYPE_DEFAULT ;
 int R_REG_NAME_SP ;
 scalar_t__ R_STR_ISNOTEMPTY (void*) ;
 int __cache_white_list (TYPE_5__*,TYPE_4__*) ;
 scalar_t__ __check_panel_type (TYPE_4__*,int ) ;
 int __set_cmd_str_cache (TYPE_5__*,TYPE_4__*,int *) ;
 int __set_dcb (TYPE_5__*,TYPE_4__*) ;
 int __set_panel_addr (TYPE_5__*,TYPE_4__*,scalar_t__ const) ;
 int __set_pcb (TYPE_4__*) ;
 int __set_rcb (TYPE_7__*,TYPE_4__*) ;
 int __set_read_only (TYPE_4__*,int *) ;
 scalar_t__ const r_config_get_i (int ,char*) ;
 char* r_reg_get_name (int ,int ) ;
 scalar_t__ r_reg_getv (int ,char const*) ;
 void* r_str_dup (void*,char const*) ;

void __init_panel_param(RCore *core, RPanel *p, const char *title, const char *cmd) {
 RPanelModel *m = p->model;
 RPanelView *v = p->view;
 m->type = PANEL_TYPE_DEFAULT;
 m->rotate = 0;
 v->curpos = 0;
 __set_panel_addr (core, p, core->offset);
 m->rotateCb = ((void*)0);
 __set_cmd_str_cache (core, p, ((void*)0));
 __set_read_only(p, ((void*)0));
 m->funcName = ((void*)0);
 v->refresh = 1;
 if (title) {
  m->title = r_str_dup (m->title, title);
  if (cmd) {
   m->cmd = r_str_dup (m->cmd, cmd);
  } else {
   m->cmd = r_str_dup (m->cmd, "");
  }
 } else if (cmd) {
  m->title = r_str_dup (m->title, cmd);
  m->cmd = r_str_dup (m->cmd, cmd);
 } else {
  m->title = r_str_dup (m->title, "");
  m->cmd = r_str_dup (m->cmd, "");
 }
 __set_pcb (p);
 if (R_STR_ISNOTEMPTY (m->cmd)) {
  __set_dcb (core, p);
  __set_rcb (core->panels, p);
  if (__check_panel_type (p, PANEL_CMD_STACK)) {
   const char *sp = r_reg_get_name (core->anal->reg, R_REG_NAME_SP);
   const ut64 stackbase = r_reg_getv (core->anal->reg, sp);
   m->baseAddr = stackbase;
   __set_panel_addr (core, p, stackbase - r_config_get_i (core->config, "stack.delta"));
  }
 }
 core->panels->n_panels++;
 __cache_white_list (core, p);
 return;
}
