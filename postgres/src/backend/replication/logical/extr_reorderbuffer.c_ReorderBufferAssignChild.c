
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int XLogRecPtr ;
typedef int TransactionId ;
struct TYPE_5__ {int is_known_as_subxact; scalar_t__ nsubtxns; int node; int subtxns; int toplevel_xid; } ;
typedef TYPE_1__ ReorderBufferTXN ;
typedef int ReorderBuffer ;


 int Assert (int) ;
 int AssertTXNLsnOrder (int *) ;
 int ERROR ;
 TYPE_1__* ReorderBufferTXNByXid (int *,int ,int,int*,int ,int) ;
 int ReorderBufferTransferSnapToParent (TYPE_1__*,TYPE_1__*) ;
 int dlist_delete (int *) ;
 int dlist_push_tail (int *,int *) ;
 int elog (int ,char*) ;

void
ReorderBufferAssignChild(ReorderBuffer *rb, TransactionId xid,
       TransactionId subxid, XLogRecPtr lsn)
{
 ReorderBufferTXN *txn;
 ReorderBufferTXN *subtxn;
 bool new_top;
 bool new_sub;

 txn = ReorderBufferTXNByXid(rb, xid, 1, &new_top, lsn, 1);
 subtxn = ReorderBufferTXNByXid(rb, subxid, 1, &new_sub, lsn, 0);

 if (new_top && !new_sub)
  elog(ERROR, "subtransaction logged without previous top-level txn record");

 if (!new_sub)
 {
  if (subtxn->is_known_as_subxact)
  {

   return;
  }
  else
  {





   dlist_delete(&subtxn->node);
  }
 }

 subtxn->is_known_as_subxact = 1;
 subtxn->toplevel_xid = xid;
 Assert(subtxn->nsubtxns == 0);


 dlist_push_tail(&txn->subtxns, &subtxn->node);
 txn->nsubtxns++;


 ReorderBufferTransferSnapToParent(txn, subtxn);


 AssertTXNLsnOrder(rb);
}
