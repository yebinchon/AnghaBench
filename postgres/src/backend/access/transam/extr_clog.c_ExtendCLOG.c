
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TransactionId ;


 int CLogControlLock ;
 int FirstNormalTransactionId ;
 int LWLockAcquire (int ,int ) ;
 int LWLockRelease (int ) ;
 int LW_EXCLUSIVE ;
 int TransactionIdEquals (int ,int ) ;
 int TransactionIdToPage (int ) ;
 scalar_t__ TransactionIdToPgIndex (int ) ;
 int ZeroCLOGPage (int,int) ;

void
ExtendCLOG(TransactionId newestXact)
{
 int pageno;





 if (TransactionIdToPgIndex(newestXact) != 0 &&
  !TransactionIdEquals(newestXact, FirstNormalTransactionId))
  return;

 pageno = TransactionIdToPage(newestXact);

 LWLockAcquire(CLogControlLock, LW_EXCLUSIVE);


 ZeroCLOGPage(pageno, 1);

 LWLockRelease(CLogControlLock);
}
