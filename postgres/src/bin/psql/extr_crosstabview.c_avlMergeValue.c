
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {char* name; char* sort_value; int rank; } ;
typedef TYPE_1__ pivot_field ;
struct TYPE_7__ {int root; int count; } ;
typedef TYPE_2__ avl_tree ;


 int avlInsertNode (TYPE_2__*,int *,TYPE_1__) ;

__attribute__((used)) static void
avlMergeValue(avl_tree *tree, char *name, char *sort_value)
{
 pivot_field field;

 field.name = name;
 field.rank = tree->count;
 field.sort_value = sort_value;
 avlInsertNode(tree, &tree->root, field);
}
