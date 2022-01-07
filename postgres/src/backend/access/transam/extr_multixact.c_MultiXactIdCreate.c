
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef void* TransactionId ;
struct TYPE_4__ {scalar_t__ status; void* xid; } ;
typedef scalar_t__ MultiXactStatus ;
typedef TYPE_1__ MultiXactMember ;
typedef int MultiXactId ;


 int Assert (int) ;
 int AssertArg (int ) ;
 int DEBUG2 ;
 int MultiXactIdCreateFromMembers (int,TYPE_1__*) ;
 int MultiXactIdIsValid (int ) ;
 size_t MyBackendId ;
 int * OldestMemberMXactId ;
 int TransactionIdEquals (void*,void*) ;
 int TransactionIdIsValid (void*) ;
 int debug_elog3 (int ,char*,int ) ;
 int mxid_to_string (int ,int,TYPE_1__*) ;

MultiXactId
MultiXactIdCreate(TransactionId xid1, MultiXactStatus status1,
      TransactionId xid2, MultiXactStatus status2)
{
 MultiXactId newMulti;
 MultiXactMember members[2];

 AssertArg(TransactionIdIsValid(xid1));
 AssertArg(TransactionIdIsValid(xid2));

 Assert(!TransactionIdEquals(xid1, xid2) || (status1 != status2));


 Assert(MultiXactIdIsValid(OldestMemberMXactId[MyBackendId]));







 members[0].xid = xid1;
 members[0].status = status1;
 members[1].xid = xid2;
 members[1].status = status2;

 newMulti = MultiXactIdCreateFromMembers(2, members);

 debug_elog3(DEBUG2, "Create: %s",
    mxid_to_string(newMulti, 2, members));

 return newMulti;
}
