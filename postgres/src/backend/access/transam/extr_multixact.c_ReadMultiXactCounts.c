
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32 ;
struct TYPE_2__ {int oldestOffsetKnown; scalar_t__ oldestOffset; scalar_t__ nextMXact; scalar_t__ oldestMultiXactId; scalar_t__ nextOffset; } ;
typedef scalar_t__ MultiXactOffset ;
typedef scalar_t__ MultiXactId ;


 int LWLockAcquire (int ,int ) ;
 int LWLockRelease (int ) ;
 int LW_SHARED ;
 int MultiXactGenLock ;
 TYPE_1__* MultiXactState ;

__attribute__((used)) static bool
ReadMultiXactCounts(uint32 *multixacts, MultiXactOffset *members)
{
 MultiXactOffset nextOffset;
 MultiXactOffset oldestOffset;
 MultiXactId oldestMultiXactId;
 MultiXactId nextMultiXactId;
 bool oldestOffsetKnown;

 LWLockAcquire(MultiXactGenLock, LW_SHARED);
 nextOffset = MultiXactState->nextOffset;
 oldestMultiXactId = MultiXactState->oldestMultiXactId;
 nextMultiXactId = MultiXactState->nextMXact;
 oldestOffset = MultiXactState->oldestOffset;
 oldestOffsetKnown = MultiXactState->oldestOffsetKnown;
 LWLockRelease(MultiXactGenLock);

 if (!oldestOffsetKnown)
  return 0;

 *members = nextOffset - oldestOffset;
 *multixacts = nextMultiXactId - oldestMultiXactId;
 return 1;
}
