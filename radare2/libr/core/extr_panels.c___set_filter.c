
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {TYPE_2__* view; TYPE_1__* model; } ;
struct TYPE_8__ {int refresh; } ;
struct TYPE_7__ {char** filter; int n_filter; } ;
typedef TYPE_3__ RPanel ;
typedef int RCore ;


 int __reset_scroll_pos (TYPE_3__*) ;
 int __set_cmd_str_cache (int *,TYPE_3__*,int *) ;
 char* __show_status_input (int *,char*) ;

void __set_filter(RCore *core, RPanel *panel) {
 if (!panel->model->filter) {
  return;
 }
 char *input = __show_status_input (core, "filter word: ");
 if (input) {
  panel->model->filter[panel->model->n_filter++] = input;
  __set_cmd_str_cache (core, panel, ((void*)0));
  panel->view->refresh = 1;
 }
 __reset_scroll_pos (panel);
}
