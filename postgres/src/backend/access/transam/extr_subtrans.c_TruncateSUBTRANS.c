
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TransactionId ;


 int SimpleLruTruncate (int ,int) ;
 int SubTransCtl ;
 int TransactionIdRetreat (int ) ;
 int TransactionIdToPage (int ) ;

void
TruncateSUBTRANS(TransactionId oldestXact)
{
 int cutoffPage;
 TransactionIdRetreat(oldestXact);
 cutoffPage = TransactionIdToPage(oldestXact);

 SimpleLruTruncate(SubTransCtl, cutoffPage);
}
