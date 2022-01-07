
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ XidStatus ;
typedef int XLogRecPtr ;
typedef int TransactionId ;


 int Assert (int) ;
 scalar_t__ TRANSACTION_STATUS_ABORTED ;
 scalar_t__ TRANSACTION_STATUS_COMMITTED ;
 scalar_t__ TRANSACTION_STATUS_SUB_COMMITTED ;
 int TransactionIdSetPageStatus (int ,int,int *,scalar_t__,int ,int,int) ;
 int TransactionIdToPage (int ) ;
 int set_status_by_pages (int,int *,scalar_t__,int ) ;

void
TransactionIdSetTreeStatus(TransactionId xid, int nsubxids,
         TransactionId *subxids, XidStatus status, XLogRecPtr lsn)
{
 int pageno = TransactionIdToPage(xid);
 int i;

 Assert(status == TRANSACTION_STATUS_COMMITTED ||
     status == TRANSACTION_STATUS_ABORTED);





 for (i = 0; i < nsubxids; i++)
 {
  if (TransactionIdToPage(subxids[i]) != pageno)
   break;
 }




 if (i == nsubxids)
 {



  TransactionIdSetPageStatus(xid, nsubxids, subxids, status, lsn,
           pageno, 1);
 }
 else
 {
  int nsubxids_on_first_page = i;
  if (status == TRANSACTION_STATUS_COMMITTED)
   set_status_by_pages(nsubxids - nsubxids_on_first_page,
        subxids + nsubxids_on_first_page,
        TRANSACTION_STATUS_SUB_COMMITTED, lsn);





  pageno = TransactionIdToPage(xid);
  TransactionIdSetPageStatus(xid, nsubxids_on_first_page, subxids, status,
           lsn, pageno, 0);





  set_status_by_pages(nsubxids - nsubxids_on_first_page,
       subxids + nsubxids_on_first_page,
       status, lsn);
 }
}
