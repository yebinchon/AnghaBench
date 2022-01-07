
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int zend_ulong ;
struct TYPE_7__ {struct TYPE_7__** branches; } ;
typedef TYPE_1__ phpdbg_btree_branch ;
struct TYPE_8__ {int depth; int persistent; TYPE_1__* branch; int count; } ;
typedef TYPE_2__ phpdbg_btree ;


 int FAILURE ;
 int SUCCESS ;
 int memcpy (TYPE_1__*,TYPE_1__*,int) ;
 int pefree (TYPE_1__*,int ) ;

int phpdbg_btree_delete(phpdbg_btree *tree, zend_ulong idx) {
 int i = tree->depth;
 phpdbg_btree_branch *branch = tree->branch;
 int i_last_dual_branch = -1, last_dual_branch_branch;
 phpdbg_btree_branch *last_dual_branch = ((void*)0);

 goto check_branch_existence;
 do {
  if (branch->branches[0] && branch->branches[1]) {
   last_dual_branch = branch;
   i_last_dual_branch = i;
   last_dual_branch_branch = (idx >> i) % 2;
  }
  branch = branch->branches[(idx >> i) % 2];

check_branch_existence:
  if (branch == ((void*)0)) {
   return FAILURE;
  }
 } while (i--);

 tree->count--;

 if (i_last_dual_branch == -1) {
  pefree(tree->branch, tree->persistent);
  tree->branch = ((void*)0);
 } else {
  if (last_dual_branch->branches[last_dual_branch_branch] == last_dual_branch + 1) {
   phpdbg_btree_branch *original_branch = last_dual_branch->branches[!last_dual_branch_branch];

   memcpy(last_dual_branch + 1, last_dual_branch->branches[!last_dual_branch_branch], (i_last_dual_branch + 1) * sizeof(phpdbg_btree_branch));
   pefree(last_dual_branch->branches[!last_dual_branch_branch], tree->persistent);
   last_dual_branch->branches[!last_dual_branch_branch] = last_dual_branch + 1;

   branch = last_dual_branch->branches[!last_dual_branch_branch];
   for (i = i_last_dual_branch; i--;) {
    branch = (branch->branches[branch->branches[1] == ++original_branch] = last_dual_branch + i_last_dual_branch - i + 1);
   }
  } else {
   pefree(last_dual_branch->branches[last_dual_branch_branch], tree->persistent);
  }

  last_dual_branch->branches[last_dual_branch_branch] = ((void*)0);
 }

 return SUCCESS;
}
