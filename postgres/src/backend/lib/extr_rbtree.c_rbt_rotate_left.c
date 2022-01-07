
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {struct TYPE_7__* parent; struct TYPE_7__* left; struct TYPE_7__* right; } ;
struct TYPE_6__ {TYPE_2__* root; } ;
typedef TYPE_1__ RBTree ;
typedef TYPE_2__ RBTNode ;


 TYPE_2__* RBTNIL ;

__attribute__((used)) static void
rbt_rotate_left(RBTree *rbt, RBTNode *x)
{
 RBTNode *y = x->right;


 x->right = y->left;
 if (y->left != RBTNIL)
  y->left->parent = x;


 if (y != RBTNIL)
  y->parent = x->parent;
 if (x->parent)
 {
  if (x == x->parent->left)
   x->parent->left = y;
  else
   x->parent->right = y;
 }
 else
 {
  rbt->root = y;
 }


 y->left = x;
 if (x != RBTNIL)
  x->parent = y;
}
