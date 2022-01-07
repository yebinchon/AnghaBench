
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int data; int (* free ) (int ) ;int children; } ;
typedef TYPE_1__ RTreeNode ;


 int free (TYPE_1__*) ;
 int r_list_free (int ) ;
 int stub1 (int ) ;

__attribute__((used)) static void r_tree_node_free (RTreeNode *n) {
 r_list_free (n->children);
 if (n->free) {
  n->free (n->data);
 }
 free (n);
}
