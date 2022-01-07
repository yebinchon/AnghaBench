
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ nentries_mem; } ;
typedef TYPE_1__ ReorderBufferTXN ;
typedef int ReorderBuffer ;


 int Assert (int) ;
 int ReorderBufferSerializeTXN (int *,TYPE_1__*) ;
 scalar_t__ max_changes_in_memory ;

__attribute__((used)) static void
ReorderBufferCheckSerializeTXN(ReorderBuffer *rb, ReorderBufferTXN *txn)
{




 if (txn->nentries_mem >= max_changes_in_memory)
 {
  ReorderBufferSerializeTXN(rb, txn);
  Assert(txn->nentries_mem == 0);
 }
}
