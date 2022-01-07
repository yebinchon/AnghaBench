
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TransactionId ;
typedef int LOCKTAG ;


 int Assert (int) ;
 int GetTopTransactionIdIfAny () ;
 scalar_t__ LOCKACQUIRE_NOT_AVAIL ;
 scalar_t__ LockAcquire (int *,int ,int,int) ;
 int LockRelease (int *,int ,int) ;
 int SET_LOCKTAG_TRANSACTION (int ,int ) ;
 int ShareLock ;
 int SubTransGetTopmostTransaction (int ) ;
 int TransactionIdEquals (int ,int ) ;
 int TransactionIdIsInProgress (int ) ;
 int TransactionIdIsValid (int ) ;
 int pg_usleep (long) ;

bool
ConditionalXactLockTableWait(TransactionId xid)
{
 LOCKTAG tag;
 bool first = 1;

 for (;;)
 {
  Assert(TransactionIdIsValid(xid));
  Assert(!TransactionIdEquals(xid, GetTopTransactionIdIfAny()));

  SET_LOCKTAG_TRANSACTION(tag, xid);

  if (LockAcquire(&tag, ShareLock, 0, 1) == LOCKACQUIRE_NOT_AVAIL)
   return 0;

  LockRelease(&tag, ShareLock, 0);

  if (!TransactionIdIsInProgress(xid))
   break;


  if (!first)
   pg_usleep(1000L);
  first = 0;
  xid = SubTransGetTopmostTransaction(xid);
 }

 return 1;
}
