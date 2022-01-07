
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int InvalidTransactionId ;
 int KnownAssignedXidsRemovePreceding (int ) ;
 int LWLockAcquire (int ,int ) ;
 int LWLockRelease (int ) ;
 int LW_EXCLUSIVE ;
 int ProcArrayLock ;

void
ExpireAllKnownAssignedTransactionIds(void)
{
 LWLockAcquire(ProcArrayLock, LW_EXCLUSIVE);
 KnownAssignedXidsRemovePreceding(InvalidTransactionId);
 LWLockRelease(ProcArrayLock);
}
