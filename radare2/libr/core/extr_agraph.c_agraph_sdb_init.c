
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {int db; int is_callgraph; } ;
struct TYPE_9__ {TYPE_2__* context; } ;
struct TYPE_7__ {int graph_false; int graph_true; int graph_box3; int graph_box2; int graph_box; } ;
struct TYPE_8__ {TYPE_1__ pal; } ;
typedef TYPE_3__ RCons ;
typedef TYPE_4__ RAGraph ;


 TYPE_3__* r_cons_singleton () ;
 int sdb_bool_set (int ,char*,int ,int ) ;
 int sdb_set_enc (int ,char*,int ,int ) ;

__attribute__((used)) static void agraph_sdb_init(const RAGraph *g) {
 sdb_bool_set (g->db, "agraph.is_callgraph", g->is_callgraph, 0);
 RCons *cons = r_cons_singleton ();
 sdb_set_enc (g->db, "agraph.color_box", cons->context->pal.graph_box, 0);
 sdb_set_enc (g->db, "agraph.color_box2", cons->context->pal.graph_box2, 0);
 sdb_set_enc (g->db, "agraph.color_box3", cons->context->pal.graph_box3, 0);
 sdb_set_enc (g->db, "agraph.color_true", cons->context->pal.graph_true, 0);
 sdb_set_enc (g->db, "agraph.color_false", cons->context->pal.graph_false, 0);
}
