
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int oldestMultiXactDB; int oldestMultiXactId; int nextOffset; int nextMXact; } ;
typedef int Oid ;
typedef int MultiXactOffset ;
typedef int MultiXactId ;


 int DEBUG2 ;
 int LWLockAcquire (int ,int ) ;
 int LWLockRelease (int ) ;
 int LW_SHARED ;
 int MultiXactGenLock ;
 TYPE_1__* MultiXactState ;
 int debug_elog6 (int ,char*,int ,int ,int ,int ) ;

void
MultiXactGetCheckptMulti(bool is_shutdown,
       MultiXactId *nextMulti,
       MultiXactOffset *nextMultiOffset,
       MultiXactId *oldestMulti,
       Oid *oldestMultiDB)
{
 LWLockAcquire(MultiXactGenLock, LW_SHARED);
 *nextMulti = MultiXactState->nextMXact;
 *nextMultiOffset = MultiXactState->nextOffset;
 *oldestMulti = MultiXactState->oldestMultiXactId;
 *oldestMultiDB = MultiXactState->oldestMultiXactDB;
 LWLockRelease(MultiXactGenLock);

 debug_elog6(DEBUG2,
    "MultiXact: checkpoint is nextMulti %u, nextOffset %u, oldestMulti %u in DB %u",
    *nextMulti, *nextMultiOffset, *oldestMulti, *oldestMultiDB);
}
