
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint16 ;
typedef int TransactionId ;
struct TYPE_6__ {int hwlock; } ;
struct TYPE_5__ {int status; int xid; } ;
typedef TYPE_1__ MultiXactMember ;
typedef int MultiXactId ;
typedef size_t LockTupleMode ;
typedef int LOCKMODE ;


 int DoLockModesConflict (int ,int ) ;
 int GetMultiXactIdMembers (int ,TYPE_1__**,int,int ) ;
 scalar_t__ HEAP_LOCKED_UPGRADED (int ) ;
 int HEAP_XMAX_IS_LOCKED_ONLY (int ) ;
 scalar_t__ ISUPDATE_from_mxstatus (int ) ;
 int LOCKMODE_from_mxstatus (int ) ;
 scalar_t__ TransactionIdDidAbort (int ) ;
 scalar_t__ TransactionIdIsCurrentTransactionId (int ) ;
 int TransactionIdIsInProgress (int ) ;
 int pfree (TYPE_1__*) ;
 TYPE_2__* tupleLockExtraInfo ;

__attribute__((used)) static bool
DoesMultiXactIdConflict(MultiXactId multi, uint16 infomask,
      LockTupleMode lockmode, bool *current_is_member)
{
 int nmembers;
 MultiXactMember *members;
 bool result = 0;
 LOCKMODE wanted = tupleLockExtraInfo[lockmode].hwlock;

 if (HEAP_LOCKED_UPGRADED(infomask))
  return 0;

 nmembers = GetMultiXactIdMembers(multi, &members, 0,
          HEAP_XMAX_IS_LOCKED_ONLY(infomask));
 if (nmembers >= 0)
 {
  int i;

  for (i = 0; i < nmembers; i++)
  {
   TransactionId memxid;
   LOCKMODE memlockmode;

   if (result && (current_is_member == ((void*)0) || *current_is_member))
    break;

   memlockmode = LOCKMODE_from_mxstatus(members[i].status);


   memxid = members[i].xid;
   if (TransactionIdIsCurrentTransactionId(memxid))
   {
    if (current_is_member != ((void*)0))
     *current_is_member = 1;
    continue;
   }
   else if (result)
    continue;


   if (!DoLockModesConflict(memlockmode, wanted))
    continue;

   if (ISUPDATE_from_mxstatus(members[i].status))
   {

    if (TransactionIdDidAbort(memxid))
     continue;
   }
   else
   {

    if (!TransactionIdIsInProgress(memxid))
     continue;
   }
   result = 1;
  }
  pfree(members);
 }

 return result;
}
