
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ XidStatus ;
typedef int XLogRecPtr ;
typedef int TransactionId ;
struct TYPE_5__ {TYPE_1__* shared; } ;
struct TYPE_4__ {scalar_t__* page_number; int* page_dirty; } ;


 int Assert (int) ;
 int CLogControlLock ;
 TYPE_2__* ClogCtl ;
 int LWLockHeldByMeInMode (int ,int ) ;
 int LW_EXCLUSIVE ;
 int SimpleLruReadPage (TYPE_2__*,int,int ,int ) ;
 scalar_t__ TRANSACTION_STATUS_ABORTED ;
 scalar_t__ TRANSACTION_STATUS_COMMITTED ;
 scalar_t__ TRANSACTION_STATUS_SUB_COMMITTED ;
 scalar_t__ TransactionIdIsValid (int ) ;
 int TransactionIdSetStatusBit (int ,scalar_t__,int ,int) ;
 scalar_t__ TransactionIdToPage (int ) ;
 int XLogRecPtrIsInvalid (int ) ;

__attribute__((used)) static void
TransactionIdSetPageStatusInternal(TransactionId xid, int nsubxids,
           TransactionId *subxids, XidStatus status,
           XLogRecPtr lsn, int pageno)
{
 int slotno;
 int i;

 Assert(status == TRANSACTION_STATUS_COMMITTED ||
     status == TRANSACTION_STATUS_ABORTED ||
     (status == TRANSACTION_STATUS_SUB_COMMITTED && !TransactionIdIsValid(xid)));
 Assert(LWLockHeldByMeInMode(CLogControlLock, LW_EXCLUSIVE));
 slotno = SimpleLruReadPage(ClogCtl, pageno, XLogRecPtrIsInvalid(lsn), xid);
 if (TransactionIdIsValid(xid))
 {

  if (status == TRANSACTION_STATUS_COMMITTED)
  {
   for (i = 0; i < nsubxids; i++)
   {
    Assert(ClogCtl->shared->page_number[slotno] == TransactionIdToPage(subxids[i]));
    TransactionIdSetStatusBit(subxids[i],
            TRANSACTION_STATUS_SUB_COMMITTED,
            lsn, slotno);
   }
  }


  TransactionIdSetStatusBit(xid, status, lsn, slotno);
 }


 for (i = 0; i < nsubxids; i++)
 {
  Assert(ClogCtl->shared->page_number[slotno] == TransactionIdToPage(subxids[i]));
  TransactionIdSetStatusBit(subxids[i], status, lsn, slotno);
 }

 ClogCtl->shared->page_dirty[slotno] = 1;
}
