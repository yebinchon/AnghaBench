
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int TransactionId ;
struct TYPE_2__ {int latestCompletedXid; } ;


 int Assert (int) ;
 int KnownAssignedXidsRemoveTree (int ,int,int *) ;
 int LWLockAcquire (int ,int ) ;
 int LWLockRelease (int ) ;
 int LW_EXCLUSIVE ;
 int ProcArrayLock ;
 scalar_t__ STANDBY_INITIALIZED ;
 TYPE_1__* ShmemVariableCache ;
 scalar_t__ TransactionIdPrecedes (int ,int ) ;
 scalar_t__ standbyState ;

void
ExpireTreeKnownAssignedTransactionIds(TransactionId xid, int nsubxids,
           TransactionId *subxids, TransactionId max_xid)
{
 Assert(standbyState >= STANDBY_INITIALIZED);




 LWLockAcquire(ProcArrayLock, LW_EXCLUSIVE);

 KnownAssignedXidsRemoveTree(xid, nsubxids, subxids);


 if (TransactionIdPrecedes(ShmemVariableCache->latestCompletedXid,
         max_xid))
  ShmemVariableCache->latestCompletedXid = max_xid;

 LWLockRelease(ProcArrayLock);
}
