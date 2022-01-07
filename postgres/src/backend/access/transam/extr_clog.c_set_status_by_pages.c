
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int XidStatus ;
typedef int XLogRecPtr ;
typedef int TransactionId ;


 int Assert (int) ;
 int InvalidTransactionId ;
 int TransactionIdSetPageStatus (int ,int,int *,int ,int ,int,int) ;
 int TransactionIdToPage (int ) ;

__attribute__((used)) static void
set_status_by_pages(int nsubxids, TransactionId *subxids,
     XidStatus status, XLogRecPtr lsn)
{
 int pageno = TransactionIdToPage(subxids[0]);
 int offset = 0;
 int i = 0;

 Assert(nsubxids > 0);

 while (i < nsubxids)
 {
  int num_on_page = 0;
  int nextpageno;

  do
  {
   nextpageno = TransactionIdToPage(subxids[i]);
   if (nextpageno != pageno)
    break;
   num_on_page++;
   i++;
  } while (i < nsubxids);

  TransactionIdSetPageStatus(InvalidTransactionId,
           num_on_page, subxids + offset,
           status, lsn, pageno, 0);
  offset = i;
  pageno = nextpageno;
 }
}
