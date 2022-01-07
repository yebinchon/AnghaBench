
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ count; int * branch; int persistent; int depth; } ;
typedef TYPE_1__ phpdbg_btree ;


 int phpdbg_btree_clean_recursive (int *,int ,int ) ;

void phpdbg_btree_clean(phpdbg_btree *tree) {
 if (tree->branch) {
  phpdbg_btree_clean_recursive(tree->branch, tree->depth, tree->persistent);
  tree->branch = ((void*)0);
  tree->count = 0;
 }
}
