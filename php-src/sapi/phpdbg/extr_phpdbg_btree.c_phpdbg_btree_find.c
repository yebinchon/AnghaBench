
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int zend_ulong ;
typedef int phpdbg_btree_result ;
struct TYPE_4__ {int result; scalar_t__* branches; } ;
typedef TYPE_1__ phpdbg_btree_branch ;
struct TYPE_5__ {int depth; TYPE_1__* branch; } ;
typedef TYPE_2__ phpdbg_btree ;


 int CHOOSE_BRANCH (int) ;

phpdbg_btree_result *phpdbg_btree_find(phpdbg_btree *tree, zend_ulong idx) {
 phpdbg_btree_branch *branch = tree->branch;
 int i = tree->depth - 1;

 if (branch == ((void*)0)) {
  return ((void*)0);
 }

 do {
  if ((idx >> i) % 2 == 1) {
    if (branch->branches[1]) {
    CHOOSE_BRANCH(1);
   } else {
    return ((void*)0);
   }
  } else {
   if (branch->branches[0]) {
    CHOOSE_BRANCH(0);
   } else {
    return ((void*)0);
   }
  }
 } while (i--);

 return &branch->result;
}
