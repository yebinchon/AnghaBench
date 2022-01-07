
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int TransactionId ;
struct TYPE_7__ {int nextFullXid; } ;
struct TYPE_6__ {TYPE_1__* shared; } ;
struct TYPE_5__ {int latest_page_number; char** page_buffer; int* page_dirty; } ;


 int BLCKSZ ;
 int CLOG_BITS_PER_XACT ;
 int CLogControlLock ;
 TYPE_2__* ClogCtl ;
 int LWLockAcquire (int ,int ) ;
 int LWLockRelease (int ) ;
 int LW_EXCLUSIVE ;
 int MemSet (char*,int ,int) ;
 TYPE_3__* ShmemVariableCache ;
 int SimpleLruReadPage (TYPE_2__*,int,int,int ) ;
 int TransactionIdToBIndex (int ) ;
 int TransactionIdToByte (int ) ;
 int TransactionIdToPage (int ) ;
 scalar_t__ TransactionIdToPgIndex (int ) ;
 int XidFromFullTransactionId (int ) ;

void
TrimCLOG(void)
{
 TransactionId xid = XidFromFullTransactionId(ShmemVariableCache->nextFullXid);
 int pageno = TransactionIdToPage(xid);

 LWLockAcquire(CLogControlLock, LW_EXCLUSIVE);




 ClogCtl->shared->latest_page_number = pageno;
 if (TransactionIdToPgIndex(xid) != 0)
 {
  int byteno = TransactionIdToByte(xid);
  int bshift = TransactionIdToBIndex(xid) * CLOG_BITS_PER_XACT;
  int slotno;
  char *byteptr;

  slotno = SimpleLruReadPage(ClogCtl, pageno, 0, xid);
  byteptr = ClogCtl->shared->page_buffer[slotno] + byteno;


  *byteptr &= (1 << bshift) - 1;

  MemSet(byteptr + 1, 0, BLCKSZ - byteno - 1);

  ClogCtl->shared->page_dirty[slotno] = 1;
 }

 LWLockRelease(CLogControlLock);
}
