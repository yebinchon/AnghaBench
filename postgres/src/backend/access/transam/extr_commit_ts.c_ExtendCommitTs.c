
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int TransactionId ;
struct TYPE_2__ {int commitTsActive; } ;


 int Assert (int) ;
 int CommitTsControlLock ;
 int FirstNormalTransactionId ;
 int InRecovery ;
 int LWLockAcquire (int ,int ) ;
 int LWLockRelease (int ) ;
 int LW_EXCLUSIVE ;
 int TransactionIdEquals (int ,int ) ;
 scalar_t__ TransactionIdToCTsEntry (int ) ;
 int TransactionIdToCTsPage (int ) ;
 int ZeroCommitTsPage (int,int) ;
 TYPE_1__* commitTsShared ;

void
ExtendCommitTs(TransactionId newestXact)
{
 int pageno;






 Assert(!InRecovery);
 if (!commitTsShared->commitTsActive)
  return;





 if (TransactionIdToCTsEntry(newestXact) != 0 &&
  !TransactionIdEquals(newestXact, FirstNormalTransactionId))
  return;

 pageno = TransactionIdToCTsPage(newestXact);

 LWLockAcquire(CommitTsControlLock, LW_EXCLUSIVE);


 ZeroCommitTsPage(pageno, !InRecovery);

 LWLockRelease(CommitTsControlLock);
}
