
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TransactionId ;


 int KnownAssignedXidsRemovePreceding (int ) ;
 int LWLockAcquire (int ,int ) ;
 int LWLockRelease (int ) ;
 int LW_EXCLUSIVE ;
 int ProcArrayLock ;

void
ExpireOldKnownAssignedTransactionIds(TransactionId xid)
{
 LWLockAcquire(ProcArrayLock, LW_EXCLUSIVE);
 KnownAssignedXidsRemovePreceding(xid);
 LWLockRelease(ProcArrayLock);
}
