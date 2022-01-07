
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32 ;
struct TYPE_6__ {int nRequested; } ;
struct TYPE_5__ {scalar_t__ locktag_lockmethodid; } ;
typedef int LWLock ;
typedef TYPE_1__ LOCKTAG ;
typedef scalar_t__ LOCKMETHODID ;
typedef TYPE_2__ LOCK ;


 int Assert (int ) ;
 int ERROR ;
 int HASH_FIND ;
 int LWLockAcquire (int *,int ) ;
 int LWLockRelease (int *) ;
 int LW_EXCLUSIVE ;
 int * LockHashPartitionLock (int ) ;
 int LockMethodLockHash ;
 int LockMethods ;
 int LockTagHashCode (TYPE_1__ const*) ;
 int elog (int ,char*,scalar_t__) ;
 scalar_t__ hash_search_with_hash_value (int ,void const*,int ,int ,int*) ;
 scalar_t__ lengthof (int ) ;

int
LockWaiterCount(const LOCKTAG *locktag)
{
 LOCKMETHODID lockmethodid = locktag->locktag_lockmethodid;
 LOCK *lock;
 bool found;
 uint32 hashcode;
 LWLock *partitionLock;
 int waiters = 0;

 if (lockmethodid <= 0 || lockmethodid >= lengthof(LockMethods))
  elog(ERROR, "unrecognized lock method: %d", lockmethodid);

 hashcode = LockTagHashCode(locktag);
 partitionLock = LockHashPartitionLock(hashcode);
 LWLockAcquire(partitionLock, LW_EXCLUSIVE);

 lock = (LOCK *) hash_search_with_hash_value(LockMethodLockHash,
            (const void *) locktag,
            hashcode,
            HASH_FIND,
            &found);
 if (found)
 {
  Assert(lock != ((void*)0));
  waiters = lock->nRequested;
 }
 LWLockRelease(partitionLock);

 return waiters;
}
