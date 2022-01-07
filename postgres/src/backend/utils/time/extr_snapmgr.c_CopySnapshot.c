
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int xcnt; int subxcnt; int copied; struct TYPE_8__* subxip; scalar_t__ takenDuringRecovery; int suboverflowed; struct TYPE_8__* xip; scalar_t__ active_count; scalar_t__ regd_count; } ;
typedef TYPE_1__ TransactionId ;
typedef int SnapshotData ;
typedef TYPE_1__* Snapshot ;
typedef int Size ;


 int Assert (int) ;
 TYPE_1__* InvalidSnapshot ;
 scalar_t__ MemoryContextAlloc (int ,int) ;
 int TopTransactionContext ;
 int memcpy (TYPE_1__*,TYPE_1__*,int) ;

__attribute__((used)) static Snapshot
CopySnapshot(Snapshot snapshot)
{
 Snapshot newsnap;
 Size subxipoff;
 Size size;

 Assert(snapshot != InvalidSnapshot);


 size = subxipoff = sizeof(SnapshotData) +
  snapshot->xcnt * sizeof(TransactionId);
 if (snapshot->subxcnt > 0)
  size += snapshot->subxcnt * sizeof(TransactionId);

 newsnap = (Snapshot) MemoryContextAlloc(TopTransactionContext, size);
 memcpy(newsnap, snapshot, sizeof(SnapshotData));

 newsnap->regd_count = 0;
 newsnap->active_count = 0;
 newsnap->copied = 1;


 if (snapshot->xcnt > 0)
 {
  newsnap->xip = (TransactionId *) (newsnap + 1);
  memcpy(newsnap->xip, snapshot->xip,
      snapshot->xcnt * sizeof(TransactionId));
 }
 else
  newsnap->xip = ((void*)0);







 if (snapshot->subxcnt > 0 &&
  (!snapshot->suboverflowed || snapshot->takenDuringRecovery))
 {
  newsnap->subxip = (TransactionId *) ((char *) newsnap + subxipoff);
  memcpy(newsnap->subxip, snapshot->subxip,
      snapshot->subxcnt * sizeof(TransactionId));
 }
 else
  newsnap->subxip = ((void*)0);

 return newsnap;
}
