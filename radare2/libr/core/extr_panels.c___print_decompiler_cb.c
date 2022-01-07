
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_14__ {int addr; } ;
struct TYPE_13__ {TYPE_2__* panels; TYPE_1__* panels_root; int offset; int anal; } ;
struct TYPE_12__ {scalar_t__ autoUpdate; } ;
struct TYPE_11__ {scalar_t__ cur_pdc_cache; } ;
typedef int RPanel ;
typedef TYPE_3__ RCore ;
typedef TYPE_4__ RAnalFunction ;


 int R_ANAL_FCN_TYPE_NULL ;
 scalar_t__ __check_func_diff (TYPE_3__*,int *) ;
 char* __find_cmd_str_cache (TYPE_3__*,int *) ;
 char* __handle_cmd_str_cache (TYPE_3__*,int *,int) ;
 int __update_panel_contents (TYPE_3__*,int *,char*) ;
 int __update_pdc_contents (TYPE_3__*,int *,char*) ;
 TYPE_4__* r_anal_get_fcn_in (int ,int ,int ) ;
 int r_num_as_string (int *,int ,int) ;
 char* r_str_new (char*) ;
 scalar_t__ sdb_ptr_get (scalar_t__,int ,int ) ;

void __print_decompiler_cb(void *user, void *p) {


 RCore *core = (RCore *)user;
 RPanel *panel = (RPanel *)p;
 RAnalFunction *func = r_anal_get_fcn_in (core->anal, core->offset, R_ANAL_FCN_TYPE_NULL);
 char *cmdstr = ((void*)0);
 if (func && core->panels_root->cur_pdc_cache) {
  cmdstr = r_str_new ((char *)sdb_ptr_get (core->panels_root->cur_pdc_cache,
     r_num_as_string (((void*)0), func->addr, 0), 0));
 }
 if (cmdstr) {
  __update_panel_contents (core, panel, cmdstr);
  return;
 }
 bool update = core->panels->autoUpdate && __check_func_diff (core, panel);
 if (update) {
  cmdstr = __handle_cmd_str_cache (core, panel, 0);
  __update_pdc_contents (core, panel, cmdstr);
  return;
 }
 cmdstr = __find_cmd_str_cache (core, panel);
 if (cmdstr) {
  __update_panel_contents (core, panel, cmdstr);
 }
}
