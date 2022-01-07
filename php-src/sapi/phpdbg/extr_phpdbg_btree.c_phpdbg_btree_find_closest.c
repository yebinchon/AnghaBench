
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int zend_ulong ;
typedef int phpdbg_btree_result ;
struct TYPE_4__ {int* branches; int result; } ;
typedef TYPE_1__ phpdbg_btree_branch ;
struct TYPE_5__ {int depth; TYPE_1__* branch; } ;
typedef TYPE_2__ phpdbg_btree ;


 int CHOOSE_BRANCH (int) ;

phpdbg_btree_result *phpdbg_btree_find_closest(phpdbg_btree *tree, zend_ulong idx) {
 phpdbg_btree_branch *branch = tree->branch;
 int i = tree->depth - 1, last_superior_i = -1;

 if (branch == ((void*)0)) {
  return ((void*)0);
 }


 do {
  if ((idx >> i) % 2 == 0) {
   if (branch->branches[0]) {
    CHOOSE_BRANCH(0);

   } else {

    if (last_superior_i == -1) {

     return ((void*)0);
    }

    branch = tree->branch;
    i = tree->depth - 1;

    do {
     CHOOSE_BRANCH((idx >> i) % 2 == 1 && branch->branches[1]);
    } while (--i > last_superior_i);

    CHOOSE_BRANCH(0);

    while (i--) {
     CHOOSE_BRANCH(branch->branches[1]);
    }
    break;
   }

  } else {
   if (branch->branches[1]) {
    if (branch->branches[0]) {
     last_superior_i = i;
    }
    CHOOSE_BRANCH(1);
   } else {
    CHOOSE_BRANCH(0);
    while (i--) {
     CHOOSE_BRANCH(branch->branches[1]);
    }
    break;
   }
  }
 } while (i--);

 return &branch->result;
}
