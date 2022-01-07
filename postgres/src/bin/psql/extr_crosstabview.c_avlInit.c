
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* end; TYPE_2__* root; scalar_t__ count; } ;
typedef TYPE_1__ avl_tree ;
struct TYPE_5__ {struct TYPE_5__** children; } ;
typedef TYPE_2__ avl_node ;


 scalar_t__ pg_malloc0 (int) ;

__attribute__((used)) static void
avlInit(avl_tree *tree)
{
 tree->end = (avl_node *) pg_malloc0(sizeof(avl_node));
 tree->end->children[0] = tree->end->children[1] = tree->end;
 tree->count = 0;
 tree->root = tree->end;
}
