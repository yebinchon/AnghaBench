
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TransactionId ;
typedef int Oid ;


 int AdvanceOldestClogXid (int ) ;
 int ClogCtl ;
 int SimpleLruTruncate (int ,int) ;
 int SlruScanDirCbReportPresence ;
 int SlruScanDirectory (int ,int ,int*) ;
 int TransactionIdToPage (int ) ;
 int WriteTruncateXlogRec (int,int ,int ) ;

void
TruncateCLOG(TransactionId oldestXact, Oid oldestxid_datoid)
{
 int cutoffPage;





 cutoffPage = TransactionIdToPage(oldestXact);


 if (!SlruScanDirectory(ClogCtl, SlruScanDirCbReportPresence, &cutoffPage))
  return;
 AdvanceOldestClogXid(oldestXact);







 WriteTruncateXlogRec(cutoffPage, oldestXact, oldestxid_datoid);


 SimpleLruTruncate(ClogCtl, cutoffPage);
}
