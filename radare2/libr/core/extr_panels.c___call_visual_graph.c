
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int config; TYPE_1__* panels; } ;
struct TYPE_8__ {int * can; } ;
typedef TYPE_1__ RPanels ;
typedef TYPE_2__ RCore ;


 scalar_t__ __check_func (TYPE_2__*) ;
 int * __create_new_canvas (TYPE_2__*,int,int) ;
 int __set_refresh_all (TYPE_2__*,int,int) ;
 int r_config_get_i (int ,char*) ;
 int r_config_set_i (int ,char*,int) ;
 int r_cons_canvas_free (int *) ;
 int r_cons_get_size (int*) ;
 int r_core_visual_graph (TYPE_2__*,int *,int *,int) ;

void __call_visual_graph(RCore *core) {
 if (__check_func (core)) {
  RPanels *panels = core->panels;

  r_cons_canvas_free (panels->can);
  panels->can = ((void*)0);

  int ocolor = r_config_get_i (core->config, "scr.color");

  r_core_visual_graph (core, ((void*)0), ((void*)0), 1);
  r_config_set_i (core->config, "scr.color", ocolor);

  int h, w = r_cons_get_size (&h);
  panels->can = __create_new_canvas (core, w, h);
  __set_refresh_all (core, 0, 0);
 }
}
