
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int nextOffset; int nextMXact; } ;
typedef int MultiXactOffset ;
typedef int MultiXactId ;


 int DEBUG2 ;
 scalar_t__ IsBinaryUpgrade ;
 int LWLockAcquire (int ,int ) ;
 int LWLockRelease (int ) ;
 int LW_EXCLUSIVE ;
 int MaybeExtendOffsetSlru () ;
 int MultiXactGenLock ;
 TYPE_1__* MultiXactState ;
 int debug_elog4 (int ,char*,int ,int ) ;

void
MultiXactSetNextMXact(MultiXactId nextMulti,
       MultiXactOffset nextMultiOffset)
{
 debug_elog4(DEBUG2, "MultiXact: setting next multi to %u offset %u",
    nextMulti, nextMultiOffset);
 LWLockAcquire(MultiXactGenLock, LW_EXCLUSIVE);
 MultiXactState->nextMXact = nextMulti;
 MultiXactState->nextOffset = nextMultiOffset;
 LWLockRelease(MultiXactGenLock);
 if (IsBinaryUpgrade)
  MaybeExtendOffsetSlru();
}
