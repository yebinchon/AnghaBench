
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TransactionId ;


 int Assert (int ) ;
 int KnownAssignedXidsSearch (int ,int) ;
 int TransactionIdIsValid (int ) ;

__attribute__((used)) static bool
KnownAssignedXidExists(TransactionId xid)
{
 Assert(TransactionIdIsValid(xid));

 return KnownAssignedXidsSearch(xid, 0);
}
