
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int txn_context; } ;
struct TYPE_6__ {int subtxns; int tuplecids; int changes; } ;
typedef TYPE_1__ ReorderBufferTXN ;
typedef TYPE_2__ ReorderBuffer ;


 scalar_t__ MemoryContextAlloc (int ,int) ;
 int dlist_init (int *) ;
 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static ReorderBufferTXN *
ReorderBufferGetTXN(ReorderBuffer *rb)
{
 ReorderBufferTXN *txn;

 txn = (ReorderBufferTXN *)
  MemoryContextAlloc(rb->txn_context, sizeof(ReorderBufferTXN));

 memset(txn, 0, sizeof(ReorderBufferTXN));

 dlist_init(&txn->changes);
 dlist_init(&txn->tuplecids);
 dlist_init(&txn->subtxns);

 return txn;
}
