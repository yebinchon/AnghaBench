
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32 ;
typedef scalar_t__ TransactionId ;
struct TYPE_2__ {int nextFullXid; } ;
typedef int FullTransactionId ;


 scalar_t__ AmStartupProcess () ;
 int Assert (int) ;
 int EpochFromFullTransactionId (int ) ;
 int FullTransactionIdFromEpochAndXid (int ,scalar_t__) ;
 int IsUnderPostmaster ;
 int LWLockAcquire (int ,int ) ;
 int LWLockRelease (int ) ;
 int LW_EXCLUSIVE ;
 TYPE_1__* ShmemVariableCache ;
 int TransactionIdAdvance (scalar_t__) ;
 int TransactionIdFollowsOrEquals (scalar_t__,scalar_t__) ;
 scalar_t__ XidFromFullTransactionId (int ) ;
 int XidGenLock ;
 scalar_t__ unlikely (int) ;

void
AdvanceNextFullTransactionIdPastXid(TransactionId xid)
{
 FullTransactionId newNextFullXid;
 TransactionId next_xid;
 uint32 epoch;






 Assert(AmStartupProcess() || !IsUnderPostmaster);


 next_xid = XidFromFullTransactionId(ShmemVariableCache->nextFullXid);
 if (!TransactionIdFollowsOrEquals(xid, next_xid))
  return;
 TransactionIdAdvance(xid);
 epoch = EpochFromFullTransactionId(ShmemVariableCache->nextFullXid);
 if (unlikely(xid < next_xid))
  ++epoch;
 newNextFullXid = FullTransactionIdFromEpochAndXid(epoch, xid);





 LWLockAcquire(XidGenLock, LW_EXCLUSIVE);
 ShmemVariableCache->nextFullXid = newNextFullXid;
 LWLockRelease(XidGenLock);
}
