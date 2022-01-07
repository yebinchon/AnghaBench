
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int zend_ulong ;
typedef size_t zend_bool ;
struct TYPE_4__ {struct TYPE_4__** branches; } ;
typedef TYPE_1__ phpdbg_btree_branch ;


 int pefree (TYPE_1__*,size_t) ;

void phpdbg_btree_clean_recursive(phpdbg_btree_branch *branch, zend_ulong depth, zend_bool persistent) {
 phpdbg_btree_branch *start = branch;
 while (depth--) {
  zend_bool use_branch = branch + 1 == branch->branches[0];
  if (branch->branches[use_branch]) {
   phpdbg_btree_clean_recursive(branch->branches[use_branch], depth, persistent);
  }
 }

 pefree(start, persistent);
}
