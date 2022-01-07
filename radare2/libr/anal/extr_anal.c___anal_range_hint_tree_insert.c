
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int rb; } ;
typedef int RBNode ;
typedef TYPE_1__ RAnalRange ;


 int __anal_hint_range_tree_cmp ;
 int r_rbtree_aug_insert (int **,TYPE_1__*,int *,int ,int *,int *) ;

__attribute__((used)) static void __anal_range_hint_tree_insert(RBNode **root, RAnalRange *range) {
 r_rbtree_aug_insert (root, range, &(range->rb),
        __anal_hint_range_tree_cmp,
        ((void*)0), ((void*)0));
}
