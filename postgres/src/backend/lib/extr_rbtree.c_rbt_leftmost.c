
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {struct TYPE_7__* left; } ;
struct TYPE_6__ {TYPE_2__* root; } ;
typedef TYPE_1__ RBTree ;
typedef TYPE_2__ RBTNode ;


 TYPE_2__* RBTNIL ;

RBTNode *
rbt_leftmost(RBTree *rbt)
{
 RBTNode *node = rbt->root;
 RBTNode *leftmost = rbt->root;

 while (node != RBTNIL)
 {
  leftmost = node;
  node = node->left;
 }

 if (leftmost != RBTNIL)
  return leftmost;

 return ((void*)0);
}
