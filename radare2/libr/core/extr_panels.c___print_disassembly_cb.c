
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef int ut64 ;
struct TYPE_20__ {int offset; int config; TYPE_1__* print; } ;
struct TYPE_19__ {TYPE_4__* model; TYPE_3__* view; } ;
struct TYPE_18__ {char* cmd; int addr; } ;
struct TYPE_16__ {scalar_t__ h; } ;
struct TYPE_17__ {TYPE_2__ pos; } ;
struct TYPE_15__ {long long screen_bounds; } ;
typedef TYPE_5__ RPanel ;
typedef TYPE_6__ RCore ;


 char* __find_cmd_str_cache (TYPE_6__*,TYPE_5__*) ;
 char* __handle_cmd_str_cache (TYPE_6__*,TYPE_5__*,int) ;
 int __update_panel_contents (TYPE_6__*,TYPE_5__*,char*) ;
 int free (char*) ;
 scalar_t__ r_config_get_i (int ,char*) ;
 int r_core_cmd (TYPE_6__*,char*,int ) ;
 int r_core_seek (TYPE_6__*,int ,int) ;
 char* r_str_newf (char*,char*,scalar_t__) ;

void __print_disassembly_cb(void *user, void *p) {
 RCore *core = (RCore *)user;
 RPanel *panel = (RPanel *)p;
 core->print->screen_bounds = 1LL;
 char *cmdstr = __find_cmd_str_cache (core, panel);
 if (cmdstr) {
  __update_panel_contents (core, panel, cmdstr);
  return;
 }
 char *ocmd = panel->model->cmd;
 panel->model->cmd = r_str_newf ("%s %d", panel->model->cmd, panel->view->pos.h - 3);
 ut64 o_offset = core->offset;
 core->offset = panel->model->addr;
 r_core_seek (core, panel->model->addr, 1);
 if (r_config_get_i (core->config, "cfg.debug")) {
  r_core_cmd (core, ".dr*", 0);
 }
 cmdstr = __handle_cmd_str_cache (core, panel, 0);
 core->offset = o_offset;
 free (panel->model->cmd);
 panel->model->cmd = ocmd;
 __update_panel_contents (core, panel, cmdstr);
}
