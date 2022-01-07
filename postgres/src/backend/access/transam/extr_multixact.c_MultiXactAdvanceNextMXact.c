
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* nextOffset; void* nextMXact; } ;
typedef void* MultiXactOffset ;
typedef void* MultiXactId ;


 int DEBUG2 ;
 int LWLockAcquire (int ,int ) ;
 int LWLockRelease (int ) ;
 int LW_EXCLUSIVE ;
 int MultiXactGenLock ;
 scalar_t__ MultiXactIdPrecedes (void*,void*) ;
 scalar_t__ MultiXactOffsetPrecedes (void*,void*) ;
 TYPE_1__* MultiXactState ;
 int debug_elog3 (int ,char*,void*) ;

void
MultiXactAdvanceNextMXact(MultiXactId minMulti,
        MultiXactOffset minMultiOffset)
{
 LWLockAcquire(MultiXactGenLock, LW_EXCLUSIVE);
 if (MultiXactIdPrecedes(MultiXactState->nextMXact, minMulti))
 {
  debug_elog3(DEBUG2, "MultiXact: setting next multi to %u", minMulti);
  MultiXactState->nextMXact = minMulti;
 }
 if (MultiXactOffsetPrecedes(MultiXactState->nextOffset, minMultiOffset))
 {
  debug_elog3(DEBUG2, "MultiXact: setting next offset to %u",
     minMultiOffset);
  MultiXactState->nextOffset = minMultiOffset;
 }
 LWLockRelease(MultiXactGenLock);
}
