
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_15__ {scalar_t__ color; TYPE_1__* parent; struct TYPE_15__* right; struct TYPE_15__* left; } ;
struct TYPE_14__ {int arg; int (* freefunc ) (TYPE_3__*,int ) ;TYPE_3__* root; } ;
struct TYPE_13__ {TYPE_3__* right; TYPE_3__* left; } ;
typedef TYPE_2__ RBTree ;
typedef TYPE_3__ RBTNode ;


 scalar_t__ RBTBLACK ;
 TYPE_3__* RBTNIL ;
 int rbt_copy_data (TYPE_2__*,TYPE_3__*,TYPE_3__*) ;
 int rbt_delete_fixup (TYPE_2__*,TYPE_3__*) ;
 int stub1 (TYPE_3__*,int ) ;

__attribute__((used)) static void
rbt_delete_node(RBTree *rbt, RBTNode *z)
{
 RBTNode *x,
      *y;


 if (!z || z == RBTNIL)
  return;






 if (z->left == RBTNIL || z->right == RBTNIL)
 {

  y = z;
 }
 else
 {

  y = z->right;
  while (y->left != RBTNIL)
   y = y->left;
 }


 if (y->left != RBTNIL)
  x = y->left;
 else
  x = y->right;


 x->parent = y->parent;
 if (y->parent)
 {
  if (y == y->parent->left)
   y->parent->left = x;
  else
   y->parent->right = x;
 }
 else
 {
  rbt->root = x;
 }





 if (y != z)
  rbt_copy_data(rbt, z, y);





 if (y->color == RBTBLACK)
  rbt_delete_fixup(rbt, x);


 if (rbt->freefunc)
  rbt->freefunc(y, rbt->arg);
}
