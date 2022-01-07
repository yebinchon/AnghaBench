
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* TransactionId ;
struct TYPE_2__ {void* tailXid; scalar_t__ headPage; void* headXid; } ;


 int Assert (int) ;
 void* InvalidTransactionId ;
 int LWLockAcquire (int ,int ) ;
 int LWLockRelease (int ) ;
 int LW_EXCLUSIVE ;
 int OldSerXidLock ;
 scalar_t__ RecoveryInProgress () ;
 scalar_t__ TransactionIdFollows (void*,void*) ;
 int TransactionIdIsValid (void*) ;
 scalar_t__ TransactionIdPrecedes (void*,void*) ;
 TYPE_1__* oldSerXidControl ;

__attribute__((used)) static void
OldSerXidSetActiveSerXmin(TransactionId xid)
{
 LWLockAcquire(OldSerXidLock, LW_EXCLUSIVE);







 if (!TransactionIdIsValid(xid))
 {
  oldSerXidControl->tailXid = InvalidTransactionId;
  oldSerXidControl->headXid = InvalidTransactionId;
  LWLockRelease(OldSerXidLock);
  return;
 }







 if (RecoveryInProgress())
 {
  Assert(oldSerXidControl->headPage < 0);
  if (!TransactionIdIsValid(oldSerXidControl->tailXid)
   || TransactionIdPrecedes(xid, oldSerXidControl->tailXid))
  {
   oldSerXidControl->tailXid = xid;
  }
  LWLockRelease(OldSerXidLock);
  return;
 }

 Assert(!TransactionIdIsValid(oldSerXidControl->tailXid)
     || TransactionIdFollows(xid, oldSerXidControl->tailXid));

 oldSerXidControl->tailXid = xid;

 LWLockRelease(OldSerXidLock);
}
