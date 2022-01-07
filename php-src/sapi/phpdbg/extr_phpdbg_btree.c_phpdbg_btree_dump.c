
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int depth; int branch; } ;
typedef TYPE_1__ phpdbg_btree ;


 int phpdbg_btree_branch_dump (int ,int ) ;

void phpdbg_btree_dump(phpdbg_btree *tree) {
 phpdbg_btree_branch_dump(tree->branch, tree->depth);
}
