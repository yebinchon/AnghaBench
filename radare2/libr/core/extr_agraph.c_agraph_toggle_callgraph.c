
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int is_callgraph; int need_reload_nodes; int force_update_seek; } ;
typedef TYPE_1__ RAGraph ;



__attribute__((used)) static void agraph_toggle_callgraph(RAGraph *g) {
 g->is_callgraph = !g->is_callgraph;
 g->need_reload_nodes = 1;
 g->force_update_seek = 1;
}
