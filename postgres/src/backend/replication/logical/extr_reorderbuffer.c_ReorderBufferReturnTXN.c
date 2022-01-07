
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ by_txn_last_xid; int * by_txn_last_txn; } ;
struct TYPE_6__ {scalar_t__ xid; struct TYPE_6__* invalidations; int * tuplecid_hash; } ;
typedef TYPE_1__ ReorderBufferTXN ;
typedef TYPE_2__ ReorderBuffer ;


 scalar_t__ InvalidTransactionId ;
 int hash_destroy (int *) ;
 int pfree (TYPE_1__*) ;

__attribute__((used)) static void
ReorderBufferReturnTXN(ReorderBuffer *rb, ReorderBufferTXN *txn)
{

 if (rb->by_txn_last_xid == txn->xid)
 {
  rb->by_txn_last_xid = InvalidTransactionId;
  rb->by_txn_last_txn = ((void*)0);
 }



 if (txn->tuplecid_hash != ((void*)0))
 {
  hash_destroy(txn->tuplecid_hash);
  txn->tuplecid_hash = ((void*)0);
 }

 if (txn->invalidations)
 {
  pfree(txn->invalidations);
  txn->invalidations = ((void*)0);
 }

 pfree(txn);
}
