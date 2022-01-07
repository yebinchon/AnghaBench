
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TransactionId ;


 int Assert (int ) ;
 int DEBUG4 ;
 int KnownAssignedXidsSearch (int ,int) ;
 int TransactionIdIsValid (int ) ;
 int elog (int ,char*,int ) ;
 int trace_recovery (int ) ;

__attribute__((used)) static void
KnownAssignedXidsRemove(TransactionId xid)
{
 Assert(TransactionIdIsValid(xid));

 elog(trace_recovery(DEBUG4), "remove KnownAssignedXid %u", xid);
 (void) KnownAssignedXidsSearch(xid, 1);
}
