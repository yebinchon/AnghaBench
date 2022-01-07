
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TransactionId ;
typedef void* MultiXactId ;
typedef size_t BackendId ;


 void* InvalidMultiXactId ;
 int LWLockAcquire (int ,int ) ;
 int LWLockRelease (int ) ;
 int LW_EXCLUSIVE ;
 int MXactCache ;
 scalar_t__ MXactCacheMembers ;
 int * MXactContext ;
 int MultiXactGenLock ;
 scalar_t__ MultiXactIdIsValid (void*) ;
 size_t MyBackendId ;
 void** OldestMemberMXactId ;
 void** OldestVisibleMXactId ;
 size_t TwoPhaseGetDummyBackendId (int ,int) ;
 int dlist_init (int *) ;

void
PostPrepare_MultiXact(TransactionId xid)
{
 MultiXactId myOldestMember;





 myOldestMember = OldestMemberMXactId[MyBackendId];
 if (MultiXactIdIsValid(myOldestMember))
 {
  BackendId dummyBackendId = TwoPhaseGetDummyBackendId(xid, 0);







  LWLockAcquire(MultiXactGenLock, LW_EXCLUSIVE);

  OldestMemberMXactId[dummyBackendId] = myOldestMember;
  OldestMemberMXactId[MyBackendId] = InvalidMultiXactId;

  LWLockRelease(MultiXactGenLock);
 }
 OldestVisibleMXactId[MyBackendId] = InvalidMultiXactId;




 MXactContext = ((void*)0);
 dlist_init(&MXactCache);
 MXactCacheMembers = 0;
}
