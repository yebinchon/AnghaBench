
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TransactionId ;


 scalar_t__ FirstNormalTransactionId ;
 int SUBTRANS_XACTS_PER_PAGE ;
 int TransactionIdPrecedes (int,int) ;

__attribute__((used)) static bool
SubTransPagePrecedes(int page1, int page2)
{
 TransactionId xid1;
 TransactionId xid2;

 xid1 = ((TransactionId) page1) * SUBTRANS_XACTS_PER_PAGE;
 xid1 += FirstNormalTransactionId;
 xid2 = ((TransactionId) page2) * SUBTRANS_XACTS_PER_PAGE;
 xid2 += FirstNormalTransactionId;

 return TransactionIdPrecedes(xid1, xid2);
}
