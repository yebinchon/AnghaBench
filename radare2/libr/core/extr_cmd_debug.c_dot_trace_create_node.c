
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct trace_node {int dummy; } ;
struct dot_trace_ght {int graphnodes; int graph; } ;
struct TYPE_6__ {struct trace_node* data; } ;
struct TYPE_5__ {scalar_t__ data; } ;
typedef TYPE_1__ RTreeVisitor ;
typedef TYPE_2__ RTreeNode ;


 int get_graphtrace_node (int ,int ,struct trace_node*) ;

__attribute__((used)) static void dot_trace_create_node (RTreeNode *n, RTreeVisitor *vis) {
 struct dot_trace_ght *data = (struct dot_trace_ght *)vis->data;
 struct trace_node *tn = n->data;
 if (tn) get_graphtrace_node (data->graph, data->graphnodes, tn);
}
