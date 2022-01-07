
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t uint32 ;
struct TYPE_6__ {int mutex; int * count; } ;
struct TYPE_5__ {int holdsStrongLockCount; } ;
typedef TYPE_1__ LOCALLOCK ;


 int Assert (int) ;
 TYPE_3__* FastPathStrongRelationLocks ;
 int SpinLockAcquire (int *) ;
 int SpinLockRelease (int *) ;
 TYPE_1__* StrongLockInProgress ;

__attribute__((used)) static void
BeginStrongLockAcquire(LOCALLOCK *locallock, uint32 fasthashcode)
{
 Assert(StrongLockInProgress == ((void*)0));
 Assert(locallock->holdsStrongLockCount == 0);
 SpinLockAcquire(&FastPathStrongRelationLocks->mutex);
 FastPathStrongRelationLocks->count[fasthashcode]++;
 locallock->holdsStrongLockCount = 1;
 StrongLockInProgress = locallock;
 SpinLockRelease(&FastPathStrongRelationLocks->mutex);
}
