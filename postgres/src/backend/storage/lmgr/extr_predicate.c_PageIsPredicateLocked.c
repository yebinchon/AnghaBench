
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32 ;
struct TYPE_4__ {int dbNode; } ;
struct TYPE_5__ {int rd_id; TYPE_1__ rd_node; } ;
typedef TYPE_2__* Relation ;
typedef int PREDICATELOCKTARGETTAG ;
typedef int PREDICATELOCKTARGET ;
typedef int LWLock ;
typedef int BlockNumber ;


 int HASH_FIND ;
 int LWLockAcquire (int *,int ) ;
 int LWLockRelease (int *) ;
 int LW_SHARED ;
 int * PredicateLockHashPartitionLock (int ) ;
 int PredicateLockTargetHash ;
 int PredicateLockTargetTagHashCode (int *) ;
 int SET_PREDICATELOCKTARGETTAG_PAGE (int ,int ,int ,int ) ;
 scalar_t__ hash_search_with_hash_value (int ,int *,int ,int ,int *) ;

bool
PageIsPredicateLocked(Relation relation, BlockNumber blkno)
{
 PREDICATELOCKTARGETTAG targettag;
 uint32 targettaghash;
 LWLock *partitionLock;
 PREDICATELOCKTARGET *target;

 SET_PREDICATELOCKTARGETTAG_PAGE(targettag,
         relation->rd_node.dbNode,
         relation->rd_id,
         blkno);

 targettaghash = PredicateLockTargetTagHashCode(&targettag);
 partitionLock = PredicateLockHashPartitionLock(targettaghash);
 LWLockAcquire(partitionLock, LW_SHARED);
 target = (PREDICATELOCKTARGET *)
  hash_search_with_hash_value(PredicateLockTargetHash,
         &targettag, targettaghash,
         HASH_FIND, ((void*)0));
 LWLockRelease(partitionLock);

 return (target != ((void*)0));
}
