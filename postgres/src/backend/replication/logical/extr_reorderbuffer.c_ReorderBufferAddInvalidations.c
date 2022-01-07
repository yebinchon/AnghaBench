
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int XLogRecPtr ;
typedef int TransactionId ;
struct TYPE_7__ {int context; } ;
struct TYPE_6__ {scalar_t__ ninvalidations; int * invalidations; } ;
typedef int Size ;
typedef int SharedInvalidationMessage ;
typedef TYPE_1__ ReorderBufferTXN ;
typedef TYPE_2__ ReorderBuffer ;


 int Assert (int) ;
 int ERROR ;
 scalar_t__ MemoryContextAlloc (int ,int) ;
 TYPE_1__* ReorderBufferTXNByXid (TYPE_2__*,int ,int,int *,int ,int) ;
 int elog (int ,char*) ;
 int memcpy (int *,int *,int) ;

void
ReorderBufferAddInvalidations(ReorderBuffer *rb, TransactionId xid,
         XLogRecPtr lsn, Size nmsgs,
         SharedInvalidationMessage *msgs)
{
 ReorderBufferTXN *txn;

 txn = ReorderBufferTXNByXid(rb, xid, 1, ((void*)0), lsn, 1);

 if (txn->ninvalidations != 0)
  elog(ERROR, "only ever add one set of invalidations");

 Assert(nmsgs > 0);

 txn->ninvalidations = nmsgs;
 txn->invalidations = (SharedInvalidationMessage *)
  MemoryContextAlloc(rb->context,
         sizeof(SharedInvalidationMessage) * nmsgs);
 memcpy(txn->invalidations, msgs,
     sizeof(SharedInvalidationMessage) * nmsgs);
}
