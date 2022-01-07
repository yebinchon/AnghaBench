
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TransactionId ;


 int InvalidTransactionId ;
 int KnownAssignedXidsGetAndSetXmin (int *,int *,int ) ;

__attribute__((used)) static int
KnownAssignedXidsGet(TransactionId *xarray, TransactionId xmax)
{
 TransactionId xtmp = InvalidTransactionId;

 return KnownAssignedXidsGetAndSetXmin(xarray, &xtmp, xmax);
}
