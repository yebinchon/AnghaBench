
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint16 ;
typedef int XLTW_Oper ;
typedef int TransactionId ;
struct TYPE_4__ {int status; int xid; } ;
typedef int Relation ;
typedef int MultiXactStatus ;
typedef TYPE_1__ MultiXactMember ;
typedef int MultiXactId ;
typedef int ItemPointer ;


 int ConditionalXactLockTableWait (int ) ;
 int DoLockModesConflict (int ,int ) ;
 int GetMultiXactIdMembers (int ,TYPE_1__**,int,int ) ;
 scalar_t__ HEAP_LOCKED_UPGRADED (int ) ;
 int HEAP_XMAX_IS_LOCKED_ONLY (int ) ;
 int LOCKMODE_from_mxstatus (int ) ;
 scalar_t__ TransactionIdIsCurrentTransactionId (int ) ;
 scalar_t__ TransactionIdIsInProgress (int ) ;
 int XactLockTableWait (int ,int ,int ,int ) ;
 int pfree (TYPE_1__*) ;

__attribute__((used)) static bool
Do_MultiXactIdWait(MultiXactId multi, MultiXactStatus status,
       uint16 infomask, bool nowait,
       Relation rel, ItemPointer ctid, XLTW_Oper oper,
       int *remaining)
{
 bool result = 1;
 MultiXactMember *members;
 int nmembers;
 int remain = 0;


 nmembers = HEAP_LOCKED_UPGRADED(infomask) ? -1 :
  GetMultiXactIdMembers(multi, &members, 0,
         HEAP_XMAX_IS_LOCKED_ONLY(infomask));

 if (nmembers >= 0)
 {
  int i;

  for (i = 0; i < nmembers; i++)
  {
   TransactionId memxid = members[i].xid;
   MultiXactStatus memstatus = members[i].status;

   if (TransactionIdIsCurrentTransactionId(memxid))
   {
    remain++;
    continue;
   }

   if (!DoLockModesConflict(LOCKMODE_from_mxstatus(memstatus),
          LOCKMODE_from_mxstatus(status)))
   {
    if (remaining && TransactionIdIsInProgress(memxid))
     remain++;
    continue;
   }
   if (nowait)
   {
    result = ConditionalXactLockTableWait(memxid);
    if (!result)
     break;
   }
   else
    XactLockTableWait(memxid, rel, ctid, oper);
  }

  pfree(members);
 }

 if (remaining)
  *remaining = remain;

 return result;
}
