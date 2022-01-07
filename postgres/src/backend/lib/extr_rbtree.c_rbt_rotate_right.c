
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {struct TYPE_7__* parent; struct TYPE_7__* right; struct TYPE_7__* left; } ;
struct TYPE_6__ {TYPE_2__* root; } ;
typedef TYPE_1__ RBTree ;
typedef TYPE_2__ RBTNode ;


 TYPE_2__* RBTNIL ;

__attribute__((used)) static void
rbt_rotate_right(RBTree *rbt, RBTNode *x)
{
 RBTNode *y = x->left;


 x->left = y->right;
 if (y->right != RBTNIL)
  y->right->parent = x;


 if (y != RBTNIL)
  y->parent = x->parent;
 if (x->parent)
 {
  if (x == x->parent->right)
   x->parent->right = y;
  else
   x->parent->left = y;
 }
 else
 {
  rbt->root = y;
 }


 y->right = x;
 if (x != RBTNIL)
  x->parent = y;
}
