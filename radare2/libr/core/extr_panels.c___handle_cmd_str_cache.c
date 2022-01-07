
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_16__ {TYPE_2__* print; int panels; } ;
struct TYPE_15__ {TYPE_1__* model; } ;
struct TYPE_14__ {int cur_enabled; } ;
struct TYPE_13__ {int cache; } ;
typedef TYPE_3__ RPanel ;
typedef TYPE_4__ RCore ;


 int R_FREE (char*) ;
 scalar_t__ R_STR_ISNOTEMPTY (char*) ;
 char* __apply_filter_cmd (TYPE_4__*,TYPE_3__*) ;
 TYPE_3__* __get_cur_panel (int ) ;
 int __set_cmd_str_cache (TYPE_4__*,TYPE_3__*,char*) ;
 int free (char*) ;
 int r_cons_echo (int *) ;
 char* r_core_cmd_str (TYPE_4__*,char*) ;

char *__handle_cmd_str_cache(RCore *core, RPanel *panel, bool force_cache) {
 char *cmd = __apply_filter_cmd (core, panel);
 bool b = core->print->cur_enabled && __get_cur_panel (core->panels) != panel;
 if (b) {
  core->print->cur_enabled = 0;
 }
 char *out = r_core_cmd_str (core, cmd);
 r_cons_echo (((void*)0));
 if (force_cache) {
  panel->model->cache = 1;
 }
 if (R_STR_ISNOTEMPTY (out)) {
  __set_cmd_str_cache (core, panel, out);
 } else {
  R_FREE (out);
 }
 free (cmd);
 if (b) {
  core->print->cur_enabled = 1;
 }
 return out;
}
