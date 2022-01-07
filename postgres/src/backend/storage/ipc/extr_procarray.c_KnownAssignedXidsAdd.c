
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ TransactionId ;
struct TYPE_3__ {int headKnownAssignedXids; int tailKnownAssignedXids; int maxKnownAssignedXids; int numKnownAssignedXids; int known_assigned_xids_lck; } ;
typedef TYPE_1__ ProcArrayStruct ;


 int Assert (int) ;
 int ERROR ;
 scalar_t__* KnownAssignedXids ;
 int KnownAssignedXidsCompress (int) ;
 int KnownAssignedXidsDisplay (int ) ;
 int* KnownAssignedXidsValid ;
 int LOG ;
 int LWLockAcquire (int ,int ) ;
 int LWLockRelease (int ) ;
 int LW_EXCLUSIVE ;
 int ProcArrayLock ;
 int SpinLockAcquire (int *) ;
 int SpinLockRelease (int *) ;
 int TransactionIdAdvance (scalar_t__) ;
 scalar_t__ TransactionIdFollowsOrEquals (scalar_t__,scalar_t__) ;
 scalar_t__ TransactionIdPrecedes (scalar_t__,scalar_t__) ;
 int TransactionIdPrecedesOrEquals (scalar_t__,scalar_t__) ;
 int elog (int ,char*) ;
 TYPE_1__* procArray ;

__attribute__((used)) static void
KnownAssignedXidsAdd(TransactionId from_xid, TransactionId to_xid,
      bool exclusive_lock)
{
 ProcArrayStruct *pArray = procArray;
 TransactionId next_xid;
 int head,
    tail;
 int nxids;
 int i;

 Assert(TransactionIdPrecedesOrEquals(from_xid, to_xid));






 if (to_xid >= from_xid)
  nxids = to_xid - from_xid + 1;
 else
 {
  nxids = 1;
  next_xid = from_xid;
  while (TransactionIdPrecedes(next_xid, to_xid))
  {
   nxids++;
   TransactionIdAdvance(next_xid);
  }
 }





 head = pArray->headKnownAssignedXids;
 tail = pArray->tailKnownAssignedXids;

 Assert(head >= 0 && head <= pArray->maxKnownAssignedXids);
 Assert(tail >= 0 && tail < pArray->maxKnownAssignedXids);






 if (head > tail &&
  TransactionIdFollowsOrEquals(KnownAssignedXids[head - 1], from_xid))
 {
  KnownAssignedXidsDisplay(LOG);
  elog(ERROR, "out-of-order XID insertion in KnownAssignedXids");
 }




 if (head + nxids > pArray->maxKnownAssignedXids)
 {

  if (!exclusive_lock)
   LWLockAcquire(ProcArrayLock, LW_EXCLUSIVE);

  KnownAssignedXidsCompress(1);

  head = pArray->headKnownAssignedXids;


  if (!exclusive_lock)
   LWLockRelease(ProcArrayLock);




  if (head + nxids > pArray->maxKnownAssignedXids)
   elog(ERROR, "too many KnownAssignedXids");
 }


 next_xid = from_xid;
 for (i = 0; i < nxids; i++)
 {
  KnownAssignedXids[head] = next_xid;
  KnownAssignedXidsValid[head] = 1;
  TransactionIdAdvance(next_xid);
  head++;
 }


 pArray->numKnownAssignedXids += nxids;
 if (exclusive_lock)
  pArray->headKnownAssignedXids = head;
 else
 {
  SpinLockAcquire(&pArray->known_assigned_xids_lck);
  pArray->headKnownAssignedXids = head;
  SpinLockRelease(&pArray->known_assigned_xids_lck);
 }
}
