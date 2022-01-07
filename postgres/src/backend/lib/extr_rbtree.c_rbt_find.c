
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {struct TYPE_10__* right; struct TYPE_10__* left; } ;
struct TYPE_9__ {int (* comparator ) (TYPE_2__ const*,TYPE_2__*,int ) ;int arg; TYPE_2__* root; } ;
typedef TYPE_1__ RBTree ;
typedef TYPE_2__ RBTNode ;


 TYPE_2__* RBTNIL ;
 int stub1 (TYPE_2__ const*,TYPE_2__*,int ) ;

RBTNode *
rbt_find(RBTree *rbt, const RBTNode *data)
{
 RBTNode *node = rbt->root;

 while (node != RBTNIL)
 {
  int cmp = rbt->comparator(data, node, rbt->arg);

  if (cmp == 0)
   return node;
  else if (cmp < 0)
   node = node->left;
  else
   node = node->right;
 }

 return ((void*)0);
}
