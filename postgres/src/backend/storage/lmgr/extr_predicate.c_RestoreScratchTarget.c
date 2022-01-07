
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Assert (int) ;
 int HASH_ENTER ;
 int LWLockAcquire (int ,int ) ;
 int LWLockHeldByMe (int ) ;
 int LWLockRelease (int ) ;
 int LW_EXCLUSIVE ;
 int PredicateLockTargetHash ;
 int ScratchPartitionLock ;
 int ScratchTargetTag ;
 int ScratchTargetTagHash ;
 int SerializablePredicateLockListLock ;
 int hash_search_with_hash_value (int ,int *,int ,int ,int*) ;

__attribute__((used)) static void
RestoreScratchTarget(bool lockheld)
{
 bool found;

 Assert(LWLockHeldByMe(SerializablePredicateLockListLock));

 if (!lockheld)
  LWLockAcquire(ScratchPartitionLock, LW_EXCLUSIVE);
 hash_search_with_hash_value(PredicateLockTargetHash,
        &ScratchTargetTag,
        ScratchTargetTagHash,
        HASH_ENTER, &found);
 Assert(!found);
 if (!lockheld)
  LWLockRelease(ScratchPartitionLock);
}
