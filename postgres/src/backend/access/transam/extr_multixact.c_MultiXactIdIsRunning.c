
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int xid; } ;
typedef TYPE_1__ MultiXactMember ;
typedef int MultiXactId ;


 int DEBUG2 ;
 int GetMultiXactIdMembers (int,TYPE_1__**,int,int) ;
 scalar_t__ TransactionIdIsCurrentTransactionId (int ) ;
 scalar_t__ TransactionIdIsInProgress (int ) ;
 int debug_elog2 (int ,char*) ;
 int debug_elog3 (int ,char*,int) ;
 int debug_elog4 (int ,char*,int,int ) ;
 int pfree (TYPE_1__*) ;

bool
MultiXactIdIsRunning(MultiXactId multi, bool isLockOnly)
{
 MultiXactMember *members;
 int nmembers;
 int i;

 debug_elog3(DEBUG2, "IsRunning %u?", multi);





 nmembers = GetMultiXactIdMembers(multi, &members, 0, isLockOnly);

 if (nmembers <= 0)
 {
  debug_elog2(DEBUG2, "IsRunning: no members");
  return 0;
 }
 for (i = 0; i < nmembers; i++)
 {
  if (TransactionIdIsCurrentTransactionId(members[i].xid))
  {
   debug_elog3(DEBUG2, "IsRunning: I (%d) am running!", i);
   pfree(members);
   return 1;
  }
 }






 for (i = 0; i < nmembers; i++)
 {
  if (TransactionIdIsInProgress(members[i].xid))
  {
   debug_elog4(DEBUG2, "IsRunning: member %d (%u) is running",
      i, members[i].xid);
   pfree(members);
   return 1;
  }
 }

 pfree(members);

 debug_elog3(DEBUG2, "IsRunning: %u is not running", multi);

 return 0;
}
