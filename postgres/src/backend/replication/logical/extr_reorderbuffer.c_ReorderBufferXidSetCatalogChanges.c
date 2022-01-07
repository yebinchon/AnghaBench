
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int XLogRecPtr ;
typedef int TransactionId ;
struct TYPE_3__ {int has_catalog_changes; } ;
typedef TYPE_1__ ReorderBufferTXN ;
typedef int ReorderBuffer ;


 TYPE_1__* ReorderBufferTXNByXid (int *,int ,int,int *,int ,int) ;

void
ReorderBufferXidSetCatalogChanges(ReorderBuffer *rb, TransactionId xid,
          XLogRecPtr lsn)
{
 ReorderBufferTXN *txn;

 txn = ReorderBufferTXNByXid(rb, xid, 1, ((void*)0), lsn, 1);

 txn->has_catalog_changes = 1;
}
