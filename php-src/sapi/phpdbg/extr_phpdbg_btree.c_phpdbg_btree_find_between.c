
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef void* zend_ulong ;
struct TYPE_3__ {void* cur; void* end; int * tree; } ;
typedef TYPE_1__ phpdbg_btree_position ;
typedef int phpdbg_btree ;



phpdbg_btree_position phpdbg_btree_find_between(phpdbg_btree *tree, zend_ulong lower_idx, zend_ulong higher_idx) {
 phpdbg_btree_position pos;

 pos.tree = tree;
 pos.end = lower_idx;
 pos.cur = higher_idx;

 return pos;
}
