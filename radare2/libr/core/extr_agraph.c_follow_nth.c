
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int graph; int curnode; } ;
struct TYPE_7__ {int gnode; scalar_t__ is_dummy; } ;
typedef int RGraphNode ;
typedef TYPE_1__ RANode ;
typedef TYPE_2__ RAGraph ;


 TYPE_1__* get_anode (int const*) ;
 int r_agraph_set_curnode (TYPE_2__*,TYPE_1__*) ;
 int * r_graph_nth_neighbour (int ,int ,int) ;

__attribute__((used)) static void follow_nth(RAGraph *g, int nth) {
 const RGraphNode *cn = r_graph_nth_neighbour (g->graph, g->curnode, nth);
 RANode *a = get_anode (cn);

 while (a && a->is_dummy) {
  cn = r_graph_nth_neighbour (g->graph, a->gnode, 0);
  a = get_anode (cn);
 }
 if (a) {
  r_agraph_set_curnode (g, a);
 }
}
