
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ toplevel_xid; scalar_t__ xid; scalar_t__ base_snapshot_lsn; int * base_snapshot; int base_snapshot_node; } ;
typedef TYPE_1__ ReorderBufferTXN ;


 int Assert (int) ;
 void* InvalidXLogRecPtr ;
 int SnapBuildSnapDecRefcount (int *) ;
 int dlist_delete (int *) ;
 int dlist_insert_before (int *,int *) ;

__attribute__((used)) static void
ReorderBufferTransferSnapToParent(ReorderBufferTXN *txn,
          ReorderBufferTXN *subtxn)
{
 Assert(subtxn->toplevel_xid == txn->xid);

 if (subtxn->base_snapshot != ((void*)0))
 {
  if (txn->base_snapshot == ((void*)0) ||
   subtxn->base_snapshot_lsn < txn->base_snapshot_lsn)
  {




   if (txn->base_snapshot != ((void*)0))
   {
    SnapBuildSnapDecRefcount(txn->base_snapshot);
    dlist_delete(&txn->base_snapshot_node);
   }






   txn->base_snapshot = subtxn->base_snapshot;
   txn->base_snapshot_lsn = subtxn->base_snapshot_lsn;
   dlist_insert_before(&subtxn->base_snapshot_node,
        &txn->base_snapshot_node);





   subtxn->base_snapshot = ((void*)0);
   subtxn->base_snapshot_lsn = InvalidXLogRecPtr;
   dlist_delete(&subtxn->base_snapshot_node);
  }
  else
  {

   SnapBuildSnapDecRefcount(subtxn->base_snapshot);
   dlist_delete(&subtxn->base_snapshot_node);
   subtxn->base_snapshot = ((void*)0);
   subtxn->base_snapshot_lsn = InvalidXLogRecPtr;
  }
 }
}
