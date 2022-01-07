
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
 int LW_EXCLUSIVE ;
 int MaxOldestSlot ;
 int MultiXactGenLock ;
 scalar_t__ MultiXactIdIsValid (scalar_t__) ;
 scalar_t__ MultiXactIdPrecedes (scalar_t__,scalar_t__) ;
 TYPE_1__* MultiXactState ;
 size_t MyBackendId ;
 scalar_t__* OldestMemberMXactId ;
 scalar_t__* OldestVisibleMXactId ;
 int debug_elog4 (int ,char*,size_t,scalar_t__) ;

__attribute__((used)) static void
MultiXactIdSetOldestVisible(void)
{
 if (!MultiXactIdIsValid(OldestVisibleMXactId[MyBackendId]))
 {
  MultiXactId oldestMXact;
  int i;

  LWLockAcquire(MultiXactGenLock, LW_EXCLUSIVE);






  oldestMXact = MultiXactState->nextMXact;
  if (oldestMXact < FirstMultiXactId)
   oldestMXact = FirstMultiXactId;

  for (i = 1; i <= MaxOldestSlot; i++)
  {
   MultiXactId thisoldest = OldestMemberMXactId[i];

   if (MultiXactIdIsValid(thisoldest) &&
    MultiXactIdPrecedes(thisoldest, oldestMXact))
    oldestMXact = thisoldest;
  }

  OldestVisibleMXactId[MyBackendId] = oldestMXact;

  LWLockRelease(MultiXactGenLock);

  debug_elog4(DEBUG2, "MultiXact: setting OldestVisible[%d] = %u",
     MyBackendId, oldestMXact);
 }
}
