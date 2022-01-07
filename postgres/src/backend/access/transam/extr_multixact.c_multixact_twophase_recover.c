
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32 ;
typedef int uint16 ;
typedef int TransactionId ;
typedef int MultiXactId ;
typedef size_t BackendId ;


 int Assert (int) ;
 int * OldestMemberMXactId ;
 size_t TwoPhaseGetDummyBackendId (int ,int) ;

void
multixact_twophase_recover(TransactionId xid, uint16 info,
         void *recdata, uint32 len)
{
 BackendId dummyBackendId = TwoPhaseGetDummyBackendId(xid, 0);
 MultiXactId oldestMember;





 Assert(len == sizeof(MultiXactId));
 oldestMember = *((MultiXactId *) recdata);

 OldestMemberMXactId[dummyBackendId] = oldestMember;
}
