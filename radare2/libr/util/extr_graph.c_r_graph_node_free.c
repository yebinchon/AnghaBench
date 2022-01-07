
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int all_neighbours; int in_nodes; int out_nodes; int data; int (* free ) (int ) ;} ;
typedef TYPE_1__ RGraphNode ;


 int free (TYPE_1__*) ;
 int r_list_free (int ) ;
 int stub1 (int ) ;

__attribute__((used)) static void r_graph_node_free (RGraphNode *n) {
 if (!n) {
  return;
 }
 if (n->free) {
  n->free (n->data);
 }
 r_list_free (n->out_nodes);
 r_list_free (n->in_nodes);
 r_list_free (n->all_neighbours);
 free (n);
}
