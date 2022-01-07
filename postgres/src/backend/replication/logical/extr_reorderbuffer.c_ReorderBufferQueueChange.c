
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ XLogRecPtr ;
typedef int TransactionId ;
struct TYPE_7__ {int node; scalar_t__ lsn; } ;
struct TYPE_6__ {int nentries_mem; int nentries; int changes; } ;
typedef TYPE_1__ ReorderBufferTXN ;
typedef TYPE_2__ ReorderBufferChange ;
typedef int ReorderBuffer ;


 int Assert (int) ;
 scalar_t__ InvalidXLogRecPtr ;
 int ReorderBufferCheckSerializeTXN (int *,TYPE_1__*) ;
 TYPE_1__* ReorderBufferTXNByXid (int *,int ,int,int *,scalar_t__,int) ;
 int dlist_push_tail (int *,int *) ;

void
ReorderBufferQueueChange(ReorderBuffer *rb, TransactionId xid, XLogRecPtr lsn,
       ReorderBufferChange *change)
{
 ReorderBufferTXN *txn;

 txn = ReorderBufferTXNByXid(rb, xid, 1, ((void*)0), lsn, 1);

 change->lsn = lsn;
 Assert(InvalidXLogRecPtr != lsn);
 dlist_push_tail(&txn->changes, &change->node);
 txn->nentries++;
 txn->nentries_mem++;

 ReorderBufferCheckSerializeTXN(rb, txn);
}
