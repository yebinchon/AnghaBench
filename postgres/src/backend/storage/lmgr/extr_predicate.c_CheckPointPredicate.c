
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int headPage; int tailXid; } ;


 int LWLockAcquire (int ,int ) ;
 int LWLockRelease (int ) ;
 int LW_EXCLUSIVE ;
 int OldSerXidLock ;
 int OldSerXidPage (int ) ;
 int OldSerXidSlruCtl ;
 int SimpleLruFlush (int ,int) ;
 int SimpleLruTruncate (int ,int) ;
 scalar_t__ TransactionIdIsValid (int ) ;
 TYPE_1__* oldSerXidControl ;

void
CheckPointPredicate(void)
{
 int tailPage;

 LWLockAcquire(OldSerXidLock, LW_EXCLUSIVE);


 if (oldSerXidControl->headPage < 0)
 {
  LWLockRelease(OldSerXidLock);
  return;
 }

 if (TransactionIdIsValid(oldSerXidControl->tailXid))
 {

  tailPage = OldSerXidPage(oldSerXidControl->tailXid);
 }
 else
 {
  tailPage = oldSerXidControl->headPage;
  oldSerXidControl->headPage = -1;
 }

 LWLockRelease(OldSerXidLock);


 SimpleLruTruncate(OldSerXidSlruCtl, tailPage);
 SimpleLruFlush(OldSerXidSlruCtl, 1);
}
