
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TransactionId ;


 int CommitTsCtl ;
 int SimpleLruTruncate (int ,int) ;
 int SlruScanDirCbReportPresence ;
 int SlruScanDirectory (int ,int ,int*) ;
 int TransactionIdToCTsPage (int ) ;
 int WriteTruncateXlogRec (int,int ) ;

void
TruncateCommitTs(TransactionId oldestXact)
{
 int cutoffPage;





 cutoffPage = TransactionIdToCTsPage(oldestXact);


 if (!SlruScanDirectory(CommitTsCtl, SlruScanDirCbReportPresence,
         &cutoffPage))
  return;


 WriteTruncateXlogRec(cutoffPage, oldestXact);


 SimpleLruTruncate(CommitTsCtl, cutoffPage);
}
