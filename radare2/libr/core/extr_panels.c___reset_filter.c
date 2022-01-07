
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {TYPE_2__* view; TYPE_1__* model; } ;
struct TYPE_9__ {int refresh; } ;
struct TYPE_8__ {int * filter; } ;
typedef TYPE_3__ RPanel ;
typedef int RCore ;


 int PANEL_NUM_LIMIT ;
 int __renew_filter (TYPE_3__*,int ) ;
 int __reset_scroll_pos (TYPE_3__*) ;
 int __set_cmd_str_cache (int *,TYPE_3__*,int *) ;
 int free (int *) ;

void __reset_filter(RCore *core, RPanel *panel) {
 free (panel->model->filter);
 panel->model->filter = ((void*)0);
 __renew_filter (panel, PANEL_NUM_LIMIT);
 __set_cmd_str_cache (core, panel, ((void*)0));
 panel->view->refresh = 1;
 __reset_scroll_pos (panel);
}
