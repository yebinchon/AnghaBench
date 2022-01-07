
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ nextMXact; } ;
typedef scalar_t__ MultiXactId ;


 scalar_t__ FirstMultiXactId ;
 int LWLockAcquire (int ,int ) ;
 int LWLockRelease (int ) ;
 int LW_SHARED ;
 int MaxOldestSlot ;
 int MultiXactGenLock ;
 scalar_t__ MultiXactIdIsValid (scalar_t__) ;
 scalar_t__ MultiXactIdPrecedes (scalar_t__,scalar_t__) ;
 TYPE_1__* MultiXactState ;
 scalar_t__* OldestMemberMXactId ;
 scalar_t__* OldestVisibleMXactId ;

MultiXactId
GetOldestMultiXactId(void)
{
 MultiXactId oldestMXact;
 MultiXactId nextMXact;
 int i;





 LWLockAcquire(MultiXactGenLock, LW_SHARED);






 nextMXact = MultiXactState->nextMXact;
 if (nextMXact < FirstMultiXactId)
  nextMXact = FirstMultiXactId;

 oldestMXact = nextMXact;
 for (i = 1; i <= MaxOldestSlot; i++)
 {
  MultiXactId thisoldest;

  thisoldest = OldestMemberMXactId[i];
  if (MultiXactIdIsValid(thisoldest) &&
   MultiXactIdPrecedes(thisoldest, oldestMXact))
   oldestMXact = thisoldest;
  thisoldest = OldestVisibleMXactId[i];
  if (MultiXactIdIsValid(thisoldest) &&
   MultiXactIdPrecedes(thisoldest, oldestMXact))
   oldestMXact = thisoldest;
 }

 LWLockRelease(MultiXactGenLock);

 return oldestMXact;
}
