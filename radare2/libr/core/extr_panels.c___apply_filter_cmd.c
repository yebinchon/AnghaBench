
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* model; } ;
struct TYPE_4__ {char* cmd; char** filter; int n_filter; } ;
typedef TYPE_2__ RPanel ;
typedef int RCore ;


 int __show_status (int *,char*) ;
 char* r_str_ndup (char*,int) ;
 int strcat (char*,char*) ;
 int strlen (char*) ;

char *__apply_filter_cmd(RCore *core, RPanel *panel) {
 char *out = r_str_ndup (panel->model->cmd, strlen (panel->model->cmd) + 1024);
 if (!panel->model->filter) {
  return out;
 }
 int i;
 for (i = 0; i < panel->model->n_filter; i++) {
  char *filter = panel->model->filter[i];
  if (strlen (filter) > 1024) {
   (void)__show_status (core, "filter is too big.");
   return out;
  }
  strcat (out, "~");
  strcat (out, filter);
 }
 return out;
}
