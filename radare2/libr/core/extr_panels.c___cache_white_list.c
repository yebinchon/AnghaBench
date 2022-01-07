
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* model; } ;
struct TYPE_4__ {int cache; int cmd; } ;
typedef TYPE_2__ RPanel ;
typedef int RCore ;


 int COUNT (int *) ;
 int * cache_white_list_cmds ;
 int strcmp (int ,int ) ;

void __cache_white_list(RCore *core, RPanel *panel) {
 int i = 0;
 for (; i < COUNT (cache_white_list_cmds); i++) {
  if (!strcmp (panel->model->cmd, cache_white_list_cmds[i])) {
   panel->model->cache = 1;
   return;
  }
 }
 panel->model->cache = 0;
}
