
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TransactionId ;


 int FirstNormalTransactionId ;
 int LWLockAcquire (int ,int ) ;
 int LWLockRelease (int ) ;
 int LW_EXCLUSIVE ;
 int SubtransControlLock ;
 int TransactionIdEquals (int ,int ) ;
 scalar_t__ TransactionIdToEntry (int ) ;
 int TransactionIdToPage (int ) ;
 int ZeroSUBTRANSPage (int) ;

void
ExtendSUBTRANS(TransactionId newestXact)
{
 int pageno;





 if (TransactionIdToEntry(newestXact) != 0 &&
  !TransactionIdEquals(newestXact, FirstNormalTransactionId))
  return;

 pageno = TransactionIdToPage(newestXact);

 LWLockAcquire(SubtransControlLock, LW_EXCLUSIVE);


 ZeroSUBTRANSPage(pageno);

 LWLockRelease(SubtransControlLock);
}
