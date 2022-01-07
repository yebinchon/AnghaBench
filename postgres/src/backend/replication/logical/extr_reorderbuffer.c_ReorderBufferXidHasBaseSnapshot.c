
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int TransactionId ;
struct TYPE_3__ {int * base_snapshot; int toplevel_xid; scalar_t__ is_known_as_subxact; } ;
typedef TYPE_1__ ReorderBufferTXN ;
typedef int ReorderBuffer ;


 int InvalidXLogRecPtr ;
 TYPE_1__* ReorderBufferTXNByXid (int *,int ,int,int *,int ,int) ;

bool
ReorderBufferXidHasBaseSnapshot(ReorderBuffer *rb, TransactionId xid)
{
 ReorderBufferTXN *txn;

 txn = ReorderBufferTXNByXid(rb, xid, 0,
        ((void*)0), InvalidXLogRecPtr, 0);


 if (txn == ((void*)0))
  return 0;


 if (txn->is_known_as_subxact)
  txn = ReorderBufferTXNByXid(rb, txn->toplevel_xid, 0,
         ((void*)0), InvalidXLogRecPtr, 0);

 return txn->base_snapshot != ((void*)0);
}
