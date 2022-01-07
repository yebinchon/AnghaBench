
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef size_t uint32 ;
struct TYPE_8__ {scalar_t__* count; int mutex; } ;
struct TYPE_7__ {int * owner; } ;
struct TYPE_6__ {int numLockOwners; int holdsStrongLockCount; int tag; int hashcode; TYPE_2__* lockOwners; } ;
typedef TYPE_1__ LOCALLOCK ;


 int Assert (int) ;
 size_t FastPathStrongLockHashPartition (int ) ;
 TYPE_5__* FastPathStrongRelationLocks ;
 int HASH_REMOVE ;
 int LockMethodLocalHash ;
 int ResourceOwnerForgetLock (int *,TYPE_1__*) ;
 int SpinLockAcquire (int *) ;
 int SpinLockRelease (int *) ;
 int WARNING ;
 int elog (int ,char*) ;
 int hash_search (int ,void*,int ,int *) ;
 int pfree (TYPE_2__*) ;

__attribute__((used)) static void
RemoveLocalLock(LOCALLOCK *locallock)
{
 int i;

 for (i = locallock->numLockOwners - 1; i >= 0; i--)
 {
  if (locallock->lockOwners[i].owner != ((void*)0))
   ResourceOwnerForgetLock(locallock->lockOwners[i].owner, locallock);
 }
 locallock->numLockOwners = 0;
 if (locallock->lockOwners != ((void*)0))
  pfree(locallock->lockOwners);
 locallock->lockOwners = ((void*)0);

 if (locallock->holdsStrongLockCount)
 {
  uint32 fasthashcode;

  fasthashcode = FastPathStrongLockHashPartition(locallock->hashcode);

  SpinLockAcquire(&FastPathStrongRelationLocks->mutex);
  Assert(FastPathStrongRelationLocks->count[fasthashcode] > 0);
  FastPathStrongRelationLocks->count[fasthashcode]--;
  locallock->holdsStrongLockCount = 0;
  SpinLockRelease(&FastPathStrongRelationLocks->mutex);
 }

 if (!hash_search(LockMethodLocalHash,
      (void *) &(locallock->tag),
      HASH_REMOVE, ((void*)0)))
  elog(WARNING, "locallock table corrupted");
}
