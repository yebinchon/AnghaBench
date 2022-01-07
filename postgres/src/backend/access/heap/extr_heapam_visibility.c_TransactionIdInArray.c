
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TransactionId ;
typedef int Size ;


 int * bsearch (int *,int *,int ,int,int ) ;
 int xidComparator ;

__attribute__((used)) static bool
TransactionIdInArray(TransactionId xid, TransactionId *xip, Size num)
{
 return bsearch(&xid, xip, num,
       sizeof(TransactionId), xidComparator) != ((void*)0);
}
