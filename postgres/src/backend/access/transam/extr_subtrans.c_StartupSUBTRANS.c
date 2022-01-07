
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int TransactionId ;
struct TYPE_2__ {int nextFullXid; } ;
typedef int FullTransactionId ;


 int LWLockAcquire (int ,int ) ;
 int LWLockRelease (int ) ;
 int LW_EXCLUSIVE ;
 int MaxTransactionId ;
 TYPE_1__* ShmemVariableCache ;
 int SubtransControlLock ;
 int TransactionIdToPage (int ) ;
 int XidFromFullTransactionId (int ) ;
 int ZeroSUBTRANSPage (int) ;

void
StartupSUBTRANS(TransactionId oldestActiveXID)
{
 FullTransactionId nextFullXid;
 int startPage;
 int endPage;







 LWLockAcquire(SubtransControlLock, LW_EXCLUSIVE);

 startPage = TransactionIdToPage(oldestActiveXID);
 nextFullXid = ShmemVariableCache->nextFullXid;
 endPage = TransactionIdToPage(XidFromFullTransactionId(nextFullXid));

 while (startPage != endPage)
 {
  (void) ZeroSUBTRANSPage(startPage);
  startPage++;

  if (startPage > TransactionIdToPage(MaxTransactionId))
   startPage = 0;
 }
 (void) ZeroSUBTRANSPage(startPage);

 LWLockRelease(SubtransControlLock);
}
