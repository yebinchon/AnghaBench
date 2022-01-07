
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RTreeVisitor ;
typedef int RTreeNode ;


 int r_tree_node_free (int *) ;

__attribute__((used)) static void node_free (RTreeNode *n, RTreeVisitor *vis) {
 r_tree_node_free (n);
}
