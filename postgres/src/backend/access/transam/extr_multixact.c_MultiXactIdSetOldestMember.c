
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ nextMXact; } ;
typedef scalar_t__ MultiXactId ;


 int DEBUG2 ;
 scalar_t__ FirstMultiXactId ;
 int LWLockAcquire (int ,int ) ;
 int LWLockRelease (int ) ;
 int LW_SHARED ;
 int MultiXactGenLock ;
 int MultiXactIdIsValid (scalar_t__) ;
 TYPE_1__* MultiXactState ;
 size_t MyBackendId ;
 scalar_t__* OldestMemberMXactId ;
 int debug_elog4 (int ,char*,size_t,scalar_t__) ;

void
MultiXactIdSetOldestMember(void)
{
 if (!MultiXactIdIsValid(OldestMemberMXactId[MyBackendId]))
 {
  MultiXactId nextMXact;
  LWLockAcquire(MultiXactGenLock, LW_SHARED);






  nextMXact = MultiXactState->nextMXact;
  if (nextMXact < FirstMultiXactId)
   nextMXact = FirstMultiXactId;

  OldestMemberMXactId[MyBackendId] = nextMXact;

  LWLockRelease(MultiXactGenLock);

  debug_elog4(DEBUG2, "MultiXact: setting OldestMember[%d] = %u",
     MyBackendId, nextMXact);
 }
}
