
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int TransactionId ;
struct TYPE_6__ {TYPE_1__* shared; } ;
struct TYPE_5__ {int nextFullXid; } ;
struct TYPE_4__ {int latest_page_number; } ;


 int CLogControlLock ;
 TYPE_3__* ClogCtl ;
 int LWLockAcquire (int ,int ) ;
 int LWLockRelease (int ) ;
 int LW_EXCLUSIVE ;
 TYPE_2__* ShmemVariableCache ;
 int TransactionIdToPage (int ) ;
 int XidFromFullTransactionId (int ) ;

void
StartupCLOG(void)
{
 TransactionId xid = XidFromFullTransactionId(ShmemVariableCache->nextFullXid);
 int pageno = TransactionIdToPage(xid);

 LWLockAcquire(CLogControlLock, LW_EXCLUSIVE);




 ClogCtl->shared->latest_page_number = pageno;

 LWLockRelease(CLogControlLock);
}
