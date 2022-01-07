
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int TransactionId ;
struct TYPE_2__ {int lastOverflowedXid; } ;


 int Assert (int) ;
 int InvalidTransactionId ;
 int KnownAssignedXidsRemoveTree (int ,int,int *) ;
 int LWLockAcquire (int ,int ) ;
 int LWLockRelease (int ) ;
 int LW_EXCLUSIVE ;
 int ProcArrayLock ;
 int RecordKnownAssignedTransactionIds (int ) ;
 scalar_t__ STANDBY_INITIALIZED ;
 int SubTransSetParent (int ,int ) ;
 int TransactionIdLatest (int ,int,int *) ;
 scalar_t__ TransactionIdPrecedes (int ,int ) ;
 TYPE_1__* procArray ;
 scalar_t__ standbyState ;

void
ProcArrayApplyXidAssignment(TransactionId topxid,
       int nsubxids, TransactionId *subxids)
{
 TransactionId max_xid;
 int i;

 Assert(standbyState >= STANDBY_INITIALIZED);

 max_xid = TransactionIdLatest(topxid, nsubxids, subxids);
 RecordKnownAssignedTransactionIds(max_xid);
 for (i = 0; i < nsubxids; i++)
  SubTransSetParent(subxids[i], topxid);


 if (standbyState == STANDBY_INITIALIZED)
  return;




 LWLockAcquire(ProcArrayLock, LW_EXCLUSIVE);




 KnownAssignedXidsRemoveTree(InvalidTransactionId, nsubxids, subxids);




 if (TransactionIdPrecedes(procArray->lastOverflowedXid, max_xid))
  procArray->lastOverflowedXid = max_xid;

 LWLockRelease(ProcArrayLock);
}
