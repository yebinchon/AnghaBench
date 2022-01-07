
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int XLogRecPtr ;
typedef int TransactionId ;
struct TYPE_8__ {int txns_by_base_snapshot_lsn; } ;
struct TYPE_7__ {int base_snapshot_node; int base_snapshot_lsn; int * base_snapshot; int toplevel_xid; scalar_t__ is_known_as_subxact; } ;
typedef int * Snapshot ;
typedef TYPE_1__ ReorderBufferTXN ;
typedef TYPE_2__ ReorderBuffer ;


 int Assert (int ) ;
 int AssertArg (int ) ;
 int AssertTXNLsnOrder (TYPE_2__*) ;
 int InvalidXLogRecPtr ;
 TYPE_1__* ReorderBufferTXNByXid (TYPE_2__*,int ,int,int*,int ,int) ;
 int dlist_push_tail (int *,int *) ;

void
ReorderBufferSetBaseSnapshot(ReorderBuffer *rb, TransactionId xid,
        XLogRecPtr lsn, Snapshot snap)
{
 ReorderBufferTXN *txn;
 bool is_new;

 AssertArg(snap != ((void*)0));





 txn = ReorderBufferTXNByXid(rb, xid, 1, &is_new, lsn, 1);
 if (txn->is_known_as_subxact)
  txn = ReorderBufferTXNByXid(rb, txn->toplevel_xid, 0,
         ((void*)0), InvalidXLogRecPtr, 0);
 Assert(txn->base_snapshot == ((void*)0));

 txn->base_snapshot = snap;
 txn->base_snapshot_lsn = lsn;
 dlist_push_tail(&rb->txns_by_base_snapshot_lsn, &txn->base_snapshot_node);

 AssertTXNLsnOrder(rb);
}
