
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


 scalar_t__ RBTBLACK ;
 scalar_t__ RBTRED ;
 int rbt_rotate_left (TYPE_1__*,TYPE_2__*) ;
 int rbt_rotate_right (TYPE_1__*,TYPE_2__*) ;

__attribute__((used)) static void
rbt_delete_fixup(RBTree *rbt, RBTNode *x)
{





 while (x != rbt->root && x->color == RBTBLACK)
 {







  if (x == x->parent->left)
  {
   RBTNode *w = x->parent->right;

   if (w->color == RBTRED)
   {
    w->color = RBTBLACK;
    x->parent->color = RBTRED;

    rbt_rotate_left(rbt, x->parent);
    w = x->parent->right;
   }

   if (w->left->color == RBTBLACK && w->right->color == RBTBLACK)
   {
    w->color = RBTRED;

    x = x->parent;
   }
   else
   {
    if (w->right->color == RBTBLACK)
    {
     w->left->color = RBTBLACK;
     w->color = RBTRED;

     rbt_rotate_right(rbt, w);
     w = x->parent->right;
    }
    w->color = x->parent->color;
    x->parent->color = RBTBLACK;
    w->right->color = RBTBLACK;

    rbt_rotate_left(rbt, x->parent);
    x = rbt->root;
   }
  }
  else
  {
   RBTNode *w = x->parent->left;

   if (w->color == RBTRED)
   {
    w->color = RBTBLACK;
    x->parent->color = RBTRED;

    rbt_rotate_right(rbt, x->parent);
    w = x->parent->left;
   }

   if (w->right->color == RBTBLACK && w->left->color == RBTBLACK)
   {
    w->color = RBTRED;

    x = x->parent;
   }
   else
   {
    if (w->left->color == RBTBLACK)
    {
     w->right->color = RBTBLACK;
     w->color = RBTRED;

     rbt_rotate_left(rbt, w);
     w = x->parent->left;
    }
    w->color = x->parent->color;
    x->parent->color = RBTBLACK;
    w->left->color = RBTBLACK;

    rbt_rotate_right(rbt, x->parent);
    x = rbt->root;
   }
  }
 }
 x->color = RBTBLACK;
}
