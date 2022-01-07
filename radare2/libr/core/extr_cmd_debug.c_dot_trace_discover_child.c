
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct trace_node {int dummy; } ;
struct dot_trace_ght {int * graphnodes; int * graph; } ;
struct TYPE_6__ {struct trace_node* data; struct TYPE_6__* parent; } ;
struct TYPE_5__ {scalar_t__ data; } ;
typedef int Sdb ;
typedef TYPE_1__ RTreeVisitor ;
typedef TYPE_2__ RTreeNode ;
typedef int RGraphNode ;
typedef int RGraph ;


 int * get_graphtrace_node (int *,int *,struct trace_node*) ;
 int r_graph_add_edge (int *,int *,int *) ;
 int r_graph_adjacent (int *,int *,int *) ;

__attribute__((used)) static void dot_trace_discover_child (RTreeNode *n, RTreeVisitor *vis) {
 struct dot_trace_ght *data = (struct dot_trace_ght *)vis->data;
 RGraph *g = data->graph;
 Sdb *gnodes = data->graphnodes;
 RTreeNode *parent = n->parent;
 struct trace_node *tn = n->data;
 struct trace_node *tn_parent = parent->data;

 if (tn && tn_parent) {
  RGraphNode *gn = get_graphtrace_node (g, gnodes, tn);
  RGraphNode *gn_parent = get_graphtrace_node (g, gnodes, tn_parent);

  if (!r_graph_adjacent (g, gn_parent, gn))
   r_graph_add_edge (g, gn_parent, gn);
 }
}
