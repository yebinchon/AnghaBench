
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef void* TransactionId ;
struct TYPE_5__ {scalar_t__ status; void* xid; } ;
typedef scalar_t__ MultiXactStatus ;
typedef TYPE_1__ MultiXactMember ;
typedef void* MultiXactId ;


 int Assert (int ) ;
 int AssertArg (int ) ;
 int DEBUG2 ;
 int GetMultiXactIdMembers (void*,TYPE_1__**,int,int) ;
 scalar_t__ ISUPDATE_from_mxstatus (scalar_t__) ;
 void* MultiXactIdCreateFromMembers (int,TYPE_1__*) ;
 int MultiXactIdIsValid (void*) ;
 size_t MyBackendId ;
 void** OldestMemberMXactId ;
 scalar_t__ TransactionIdDidCommit (void*) ;
 scalar_t__ TransactionIdEquals (void*,void*) ;
 scalar_t__ TransactionIdIsInProgress (void*) ;
 int TransactionIdIsValid (void*) ;
 int debug_elog3 (int ,char*,void*) ;
 int debug_elog4 (int ,char*,void*,void*) ;
 int debug_elog5 (int ,char*,void*,void*,int ) ;
 int mxstatus_to_string (scalar_t__) ;
 scalar_t__ palloc (int) ;
 int pfree (TYPE_1__*) ;

MultiXactId
MultiXactIdExpand(MultiXactId multi, TransactionId xid, MultiXactStatus status)
{
 MultiXactId newMulti;
 MultiXactMember *members;
 MultiXactMember *newMembers;
 int nmembers;
 int i;
 int j;

 AssertArg(MultiXactIdIsValid(multi));
 AssertArg(TransactionIdIsValid(xid));


 Assert(MultiXactIdIsValid(OldestMemberMXactId[MyBackendId]));

 debug_elog5(DEBUG2, "Expand: received multi %u, xid %u status %s",
    multi, xid, mxstatus_to_string(status));






 nmembers = GetMultiXactIdMembers(multi, &members, 0, 0);

 if (nmembers < 0)
 {
  MultiXactMember member;
  member.xid = xid;
  member.status = status;
  newMulti = MultiXactIdCreateFromMembers(1, &member);

  debug_elog4(DEBUG2, "Expand: %u has no members, create singleton %u",
     multi, newMulti);
  return newMulti;
 }





 for (i = 0; i < nmembers; i++)
 {
  if (TransactionIdEquals(members[i].xid, xid) &&
   (members[i].status == status))
  {
   debug_elog4(DEBUG2, "Expand: %u is already a member of %u",
      xid, multi);
   pfree(members);
   return multi;
  }
 }
 newMembers = (MultiXactMember *)
  palloc(sizeof(MultiXactMember) * (nmembers + 1));

 for (i = 0, j = 0; i < nmembers; i++)
 {
  if (TransactionIdIsInProgress(members[i].xid) ||
   (ISUPDATE_from_mxstatus(members[i].status) &&
    TransactionIdDidCommit(members[i].xid)))
  {
   newMembers[j].xid = members[i].xid;
   newMembers[j++].status = members[i].status;
  }
 }

 newMembers[j].xid = xid;
 newMembers[j++].status = status;
 newMulti = MultiXactIdCreateFromMembers(j, newMembers);

 pfree(members);
 pfree(newMembers);

 debug_elog3(DEBUG2, "Expand: returning new multi %u", newMulti);

 return newMulti;
}
