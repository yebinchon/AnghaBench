
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


struct TYPE_18__ {struct TYPE_18__* right; struct TYPE_18__* left; struct TYPE_18__* parent; int color; } ;
struct TYPE_17__ {int (* comparator ) (TYPE_2__ const*,TYPE_2__*,int ) ;TYPE_2__* root; int arg; TYPE_2__* (* allocfunc ) (int ) ;int (* combiner ) (TYPE_2__*,TYPE_2__ const*,int ) ;} ;
typedef TYPE_1__ RBTree ;
typedef TYPE_2__ RBTNode ;


 TYPE_2__* RBTNIL ;
 int RBTRED ;
 int rbt_copy_data (TYPE_1__*,TYPE_2__*,TYPE_2__ const*) ;
 int rbt_insert_fixup (TYPE_1__*,TYPE_2__*) ;
 int stub1 (TYPE_2__ const*,TYPE_2__*,int ) ;
 int stub2 (TYPE_2__*,TYPE_2__ const*,int ) ;
 TYPE_2__* stub3 (int ) ;

RBTNode *
rbt_insert(RBTree *rbt, const RBTNode *data, bool *isNew)
{
 RBTNode *current,
      *parent,
      *x;
 int cmp;


 current = rbt->root;
 parent = ((void*)0);
 cmp = 0;

 while (current != RBTNIL)
 {
  cmp = rbt->comparator(data, current, rbt->arg);
  if (cmp == 0)
  {



   rbt->combiner(current, data, rbt->arg);
   *isNew = 0;
   return current;
  }
  parent = current;
  current = (cmp < 0) ? current->left : current->right;
 }




 *isNew = 1;

 x = rbt->allocfunc(rbt->arg);

 x->color = RBTRED;

 x->left = RBTNIL;
 x->right = RBTNIL;
 x->parent = parent;
 rbt_copy_data(rbt, x, data);


 if (parent)
 {
  if (cmp < 0)
   parent->left = x;
  else
   parent->right = x;
 }
 else
 {
  rbt->root = x;
 }

 rbt_insert_fixup(rbt, x);

 return x;
}
