
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RBTree ;
typedef int RBTNode ;


 int rbt_delete_node (int *,int *) ;

void
rbt_delete(RBTree *rbt, RBTNode *node)
{
 rbt_delete_node(rbt, node);
}
