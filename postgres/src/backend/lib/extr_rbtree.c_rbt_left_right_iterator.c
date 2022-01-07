
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {struct TYPE_9__* left; struct TYPE_9__* parent; struct TYPE_9__* right; } ;
struct TYPE_8__ {int is_over; TYPE_3__* last_visited; TYPE_1__* rbt; } ;
struct TYPE_7__ {TYPE_3__* root; } ;
typedef TYPE_2__ RBTreeIterator ;
typedef TYPE_3__ RBTNode ;


 TYPE_3__* RBTNIL ;

__attribute__((used)) static RBTNode *
rbt_left_right_iterator(RBTreeIterator *iter)
{
 if (iter->last_visited == ((void*)0))
 {
  iter->last_visited = iter->rbt->root;
  while (iter->last_visited->left != RBTNIL)
   iter->last_visited = iter->last_visited->left;

  return iter->last_visited;
 }

 if (iter->last_visited->right != RBTNIL)
 {
  iter->last_visited = iter->last_visited->right;
  while (iter->last_visited->left != RBTNIL)
   iter->last_visited = iter->last_visited->left;

  return iter->last_visited;
 }

 for (;;)
 {
  RBTNode *came_from = iter->last_visited;

  iter->last_visited = iter->last_visited->parent;
  if (iter->last_visited == ((void*)0))
  {
   iter->is_over = 1;
   break;
  }

  if (iter->last_visited->left == came_from)
   break;



 }

 return iter->last_visited;
}
