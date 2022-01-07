
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int XLogRecPtr ;
typedef int TransactionId ;
struct TYPE_4__ {int final_lsn; } ;
typedef TYPE_1__ ReorderBufferTXN ;
typedef int ReorderBuffer ;


 int InvalidXLogRecPtr ;
 int ReorderBufferCleanupTXN (int *,TYPE_1__*) ;
 TYPE_1__* ReorderBufferTXNByXid (int *,int ,int,int *,int ,int) ;

void
ReorderBufferAbort(ReorderBuffer *rb, TransactionId xid, XLogRecPtr lsn)
{
 ReorderBufferTXN *txn;

 txn = ReorderBufferTXNByXid(rb, xid, 0, ((void*)0), InvalidXLogRecPtr,
        0);


 if (txn == ((void*)0))
  return;


 txn->final_lsn = lsn;


 ReorderBufferCleanupTXN(rb, txn);
}
