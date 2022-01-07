
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* model; } ;
struct TYPE_4__ {int cmd; } ;
typedef TYPE_2__ RPanel ;
typedef int RCore ;


 char* __show_status_input (int *,char*) ;
 int free (char*) ;
 char* r_core_cmd_str (int *,int ) ;
 int r_str_newf (char*,char*) ;

char *__load_cmdf(RCore *core, RPanel *p, char *input, char *str) {
 char *ret = ((void*)0);
 char *res = __show_status_input (core, input);
 if (res) {
  p->model->cmd = r_str_newf (str, res);
  ret = r_core_cmd_str (core, p->model->cmd);
  free (res);
 }
 return ret;
}
