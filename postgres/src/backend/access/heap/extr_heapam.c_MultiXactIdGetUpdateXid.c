
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint16 ;
typedef scalar_t__ TransactionId ;
struct TYPE_4__ {scalar_t__ xid; int status; } ;
typedef TYPE_1__ MultiXactMember ;


 int Assert (int) ;
 int GetMultiXactIdMembers (scalar_t__,TYPE_1__**,int,int) ;
 int HEAP_XMAX_IS_MULTI ;
 int HEAP_XMAX_LOCK_ONLY ;
 int ISUPDATE_from_mxstatus (int ) ;
 scalar_t__ InvalidTransactionId ;
 int pfree (TYPE_1__*) ;

__attribute__((used)) static TransactionId
MultiXactIdGetUpdateXid(TransactionId xmax, uint16 t_infomask)
{
 TransactionId update_xact = InvalidTransactionId;
 MultiXactMember *members;
 int nmembers;

 Assert(!(t_infomask & HEAP_XMAX_LOCK_ONLY));
 Assert(t_infomask & HEAP_XMAX_IS_MULTI);





 nmembers = GetMultiXactIdMembers(xmax, &members, 0, 0);

 if (nmembers > 0)
 {
  int i;

  for (i = 0; i < nmembers; i++)
  {

   if (!ISUPDATE_from_mxstatus(members[i].status))
    continue;


   Assert(update_xact == InvalidTransactionId);
   update_xact = members[i].xid;






   break;

  }

  pfree(members);
 }

 return update_xact;
}
