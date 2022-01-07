
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int zend_ulong ;
struct TYPE_6__ {int idx; void* ptr; } ;
struct TYPE_7__ {TYPE_1__ result; struct TYPE_7__** branches; } ;
typedef TYPE_2__ phpdbg_btree_branch ;
struct TYPE_8__ {int depth; int count; int persistent; TYPE_2__* branch; } ;
typedef TYPE_3__ phpdbg_btree ;


 int FAILURE ;
 int PHPDBG_BTREE_INSERT ;
 int PHPDBG_BTREE_UPDATE ;
 int SUCCESS ;
 TYPE_2__* pemalloc (int,int ) ;

int phpdbg_btree_insert_or_update(phpdbg_btree *tree, zend_ulong idx, void *ptr, int flags) {
 int i = tree->depth - 1;
 phpdbg_btree_branch **branch = &tree->branch;

 do {
  if (*branch == ((void*)0)) {
   break;
  }
  branch = &(*branch)->branches[(idx >> i) % 2];
 } while (i--);

 if (*branch == ((void*)0)) {
  if (!(flags & PHPDBG_BTREE_INSERT)) {
   return FAILURE;
  }

  {
   phpdbg_btree_branch *memory = *branch = pemalloc((i + 2) * sizeof(phpdbg_btree_branch), tree->persistent);
   do {
    (*branch)->branches[!((idx >> i) % 2)] = ((void*)0);
    branch = &(*branch)->branches[(idx >> i) % 2];
    *branch = ++memory;
   } while (i--);
   tree->count++;
  }
 } else if (!(flags & PHPDBG_BTREE_UPDATE)) {
  return FAILURE;
 }

 (*branch)->result.idx = idx;
 (*branch)->result.ptr = ptr;

 return SUCCESS;
}
