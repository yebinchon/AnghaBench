
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t uint32 ;
struct TYPE_5__ {scalar_t__* count; int mutex; } ;
struct TYPE_4__ {int holdsStrongLockCount; int hashcode; } ;
typedef TYPE_1__ LOCALLOCK ;


 int Assert (int) ;
 size_t FastPathStrongLockHashPartition (int ) ;
 TYPE_3__* FastPathStrongRelationLocks ;
 int SpinLockAcquire (int *) ;
 int SpinLockRelease (int *) ;
 TYPE_1__* StrongLockInProgress ;

void
AbortStrongLockAcquire(void)
{
 uint32 fasthashcode;
 LOCALLOCK *locallock = StrongLockInProgress;

 if (locallock == ((void*)0))
  return;

 fasthashcode = FastPathStrongLockHashPartition(locallock->hashcode);
 Assert(locallock->holdsStrongLockCount == 1);
 SpinLockAcquire(&FastPathStrongRelationLocks->mutex);
 Assert(FastPathStrongRelationLocks->count[fasthashcode] > 0);
 FastPathStrongRelationLocks->count[fasthashcode]--;
 locallock->holdsStrongLockCount = 0;
 StrongLockInProgress = ((void*)0);
 SpinLockRelease(&FastPathStrongRelationLocks->mutex);
}
