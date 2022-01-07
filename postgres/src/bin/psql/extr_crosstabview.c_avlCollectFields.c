
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int pivot_field ;
struct TYPE_5__ {TYPE_2__* end; } ;
typedef TYPE_1__ avl_tree ;
struct TYPE_6__ {struct TYPE_6__** children; int field; } ;
typedef TYPE_2__ avl_node ;



__attribute__((used)) static int
avlCollectFields(avl_tree *tree, avl_node *node, pivot_field *fields, int idx)
{
 if (node == tree->end)
  return idx;

 idx = avlCollectFields(tree, node->children[0], fields, idx);
 fields[idx] = node->field;
 return avlCollectFields(tree, node->children[1], fields, idx + 1);
}
