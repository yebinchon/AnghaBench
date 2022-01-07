
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ XLogRecPtr ;
typedef scalar_t__ TransactionId ;
struct TYPE_11__ {scalar_t__ by_txn_last_xid; TYPE_2__* by_txn_last_txn; int toplevel_by_lsn; int current_restart_decoding_lsn; int by_txn; } ;
struct TYPE_10__ {int node; int restart_decoding_lsn; scalar_t__ first_lsn; scalar_t__ xid; } ;
struct TYPE_9__ {TYPE_2__* txn; } ;
typedef TYPE_1__ ReorderBufferTXNByIdEnt ;
typedef TYPE_2__ ReorderBufferTXN ;
typedef TYPE_3__ ReorderBuffer ;


 int Assert (int) ;
 int AssertTXNLsnOrder (TYPE_3__*) ;
 int HASH_ENTER ;
 int HASH_FIND ;
 scalar_t__ InvalidXLogRecPtr ;
 TYPE_2__* ReorderBufferGetTXN (TYPE_3__*) ;
 int TransactionIdIsValid (scalar_t__) ;
 int dlist_push_tail (int *,int *) ;
 scalar_t__ hash_search (int ,void*,int ,int*) ;

__attribute__((used)) static ReorderBufferTXN *
ReorderBufferTXNByXid(ReorderBuffer *rb, TransactionId xid, bool create,
       bool *is_new, XLogRecPtr lsn, bool create_as_top)
{
 ReorderBufferTXN *txn;
 ReorderBufferTXNByIdEnt *ent;
 bool found;

 Assert(TransactionIdIsValid(xid));




 if (TransactionIdIsValid(rb->by_txn_last_xid) &&
  rb->by_txn_last_xid == xid)
 {
  txn = rb->by_txn_last_txn;

  if (txn != ((void*)0))
  {

   if (is_new)
    *is_new = 0;
   return txn;
  }





  if (!create)
   return ((void*)0);

 }







 ent = (ReorderBufferTXNByIdEnt *)
  hash_search(rb->by_txn,
     (void *) &xid,
     create ? HASH_ENTER : HASH_FIND,
     &found);
 if (found)
  txn = ent->txn;
 else if (create)
 {

  Assert(ent != ((void*)0));
  Assert(lsn != InvalidXLogRecPtr);

  ent->txn = ReorderBufferGetTXN(rb);
  ent->txn->xid = xid;
  txn = ent->txn;
  txn->first_lsn = lsn;
  txn->restart_decoding_lsn = rb->current_restart_decoding_lsn;

  if (create_as_top)
  {
   dlist_push_tail(&rb->toplevel_by_lsn, &txn->node);
   AssertTXNLsnOrder(rb);
  }
 }
 else
  txn = ((void*)0);


 rb->by_txn_last_xid = xid;
 rb->by_txn_last_txn = txn;

 if (is_new)
  *is_new = !found;

 Assert(!create || txn != ((void*)0));
 return txn;
}
