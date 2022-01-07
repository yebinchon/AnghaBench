
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {TYPE_2__* end; } ;
typedef TYPE_1__ avl_tree ;
struct TYPE_10__ {struct TYPE_10__** children; } ;
typedef TYPE_2__ avl_node ;


 int avlBalance (TYPE_2__*) ;
 TYPE_2__* avlRotate (TYPE_2__**,int) ;
 int avlUpdateHeight (TYPE_2__*) ;

__attribute__((used)) static void
avlAdjustBalance(avl_tree *tree, avl_node **node)
{
 avl_node *current = *node;
 int b = avlBalance(current) / 2;

 if (b != 0)
 {
  int dir = (1 - b) / 2;

  if (avlBalance(current->children[dir]) == -b)
   avlRotate(&current->children[dir], !dir);
  current = avlRotate(node, dir);
 }
 if (current != tree->end)
  avlUpdateHeight(current);
}
