
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int zend_ulong ;
struct TYPE_4__ {int ptr; scalar_t__ idx; } ;
struct TYPE_5__ {TYPE_1__ result; struct TYPE_5__** branches; } ;
typedef TYPE_2__ phpdbg_btree_branch ;


 int fprintf (int ,char*,void*,int ) ;
 int stderr ;

void phpdbg_btree_branch_dump(phpdbg_btree_branch *branch, zend_ulong depth) {
 if (branch) {
  if (depth--) {
   phpdbg_btree_branch_dump(branch->branches[0], depth);
   phpdbg_btree_branch_dump(branch->branches[1], depth);
  } else {
   fprintf(stderr, "%p: %p\n", (void *) branch->result.idx, branch->result.ptr);
  }
 }
}
