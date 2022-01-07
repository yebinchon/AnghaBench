
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ color; struct TYPE_10__* parent; struct TYPE_10__* left; struct TYPE_10__* right; } ;
struct TYPE_9__ {TYPE_2__* root; } ;
typedef TYPE_1__ RBTree ;
typedef TYPE_2__ RBTNode ;


 void* RBTBLACK ;
 scalar_t__ RBTRED ;
 int rbt_rotate_left (TYPE_1__*,TYPE_2__*) ;
 int rbt_rotate_right (TYPE_1__*,TYPE_2__*) ;

__attribute__((used)) static void
rbt_insert_fixup(RBTree *rbt, RBTNode *x)
{




 while (x != rbt->root && x->parent->color == RBTRED)
 {
  if (x->parent == x->parent->parent->left)
  {
   RBTNode *y = x->parent->parent->right;

   if (y->color == RBTRED)
   {

    x->parent->color = RBTBLACK;
    y->color = RBTBLACK;
    x->parent->parent->color = RBTRED;

    x = x->parent->parent;
   }
   else
   {

    if (x == x->parent->right)
    {

     x = x->parent;
     rbt_rotate_left(rbt, x);
    }


    x->parent->color = RBTBLACK;
    x->parent->parent->color = RBTRED;

    rbt_rotate_right(rbt, x->parent->parent);
   }
  }
  else
  {

   RBTNode *y = x->parent->parent->left;

   if (y->color == RBTRED)
   {

    x->parent->color = RBTBLACK;
    y->color = RBTBLACK;
    x->parent->parent->color = RBTRED;

    x = x->parent->parent;
   }
   else
   {

    if (x == x->parent->left)
    {
     x = x->parent;
     rbt_rotate_right(rbt, x);
    }
    x->parent->color = RBTBLACK;
    x->parent->parent->color = RBTRED;

    rbt_rotate_left(rbt, x->parent->parent);
   }
  }
 }





 rbt->root->color = RBTBLACK;
}
