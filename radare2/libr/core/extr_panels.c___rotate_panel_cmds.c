
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int tmp ;
typedef int replace ;
struct TYPE_14__ {int panels; } ;
struct TYPE_13__ {TYPE_2__* view; TYPE_1__* model; } ;
struct TYPE_12__ {int refresh; } ;
struct TYPE_11__ {int rotate; int cmd; } ;
typedef TYPE_3__ RPanel ;
typedef TYPE_4__ RCore ;


 TYPE_3__* __get_cur_panel (int ) ;
 int __reset_filter (TYPE_4__*,TYPE_3__*) ;
 int __set_cmd_str_cache (TYPE_4__*,TYPE_3__*,int *) ;
 char* r_str_between (int ,char const*,char*) ;
 int r_str_dup (int ,char*) ;
 int r_str_replace (int ,char*,char*,int) ;
 int snprintf (char*,int,char*,char const*,char const*) ;

void __rotate_panel_cmds(RCore *core, const char **cmds, const int cmdslen, const char *prefix, bool rev) {
 if (!cmdslen) {
  return;
 }
 RPanel *p = __get_cur_panel (core->panels);
 __reset_filter (core, p);
 if (rev) {
  if (!p->model->rotate) {
   p->model->rotate = cmdslen - 1;
  } else {
   p->model->rotate--;
  }
 } else {
  p->model->rotate++;
 }
 char tmp[64], *between;
 int i = p->model->rotate % cmdslen;
 snprintf (tmp, sizeof (tmp), "%s%s", prefix, cmds[i]);
 between = r_str_between (p->model->cmd, prefix, " ");
 if (between) {
  char replace[64];
  snprintf (replace, sizeof (replace), "%s%s", prefix, between);
  p->model->cmd = r_str_replace (p->model->cmd, replace, tmp, 1);
 } else {
  p->model->cmd = r_str_dup (p->model->cmd, tmp);
 }
 __set_cmd_str_cache (core, p, ((void*)0));
 p->view->refresh = 1;
}
