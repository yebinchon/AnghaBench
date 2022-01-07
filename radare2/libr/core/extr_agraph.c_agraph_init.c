
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int is_callgraph; int is_instep; int need_reload_nodes; int show_node_titles; int show_node_body; int force_update_seek; int edgemode; int hints; void* db; int movspeed; int zoom; void* nodes; int graph; } ;
typedef TYPE_1__ RAGraph ;


 int DEFAULT_SPEED ;
 int ZOOM_DEFAULT ;
 int r_graph_new () ;
 void* sdb_new0 () ;

__attribute__((used)) static void agraph_init(RAGraph *g) {
 g->is_callgraph = 0;
 g->is_instep = 0;
 g->need_reload_nodes = 1;
 g->show_node_titles = 1;
 g->show_node_body = 1;
 g->force_update_seek = 1;
 g->graph = r_graph_new ();
 g->nodes = sdb_new0 ();
 g->edgemode = 2;
 g->zoom = ZOOM_DEFAULT;
 g->hints = 1;
 g->movspeed = DEFAULT_SPEED;
 g->db = sdb_new0 ();
}
