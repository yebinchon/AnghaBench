
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32 ;
struct TYPE_2__ {int held; scalar_t__ childLocks; } ;
typedef int PREDICATELOCKTARGETTAG ;
typedef TYPE_1__ LOCALPREDICATELOCK ;


 scalar_t__ CheckAndPromotePredicateLockRequest (int const*) ;
 scalar_t__ CoarserLockCovers (int const*) ;
 int CreatePredicateLock (int const*,int ,int ) ;
 int DeleteChildTargetLocks (int const*) ;
 scalar_t__ GET_PREDICATELOCKTARGETTAG_TYPE (int const) ;
 int HASH_ENTER ;
 int LocalPredicateLockHash ;
 int MySerializableXact ;
 scalar_t__ PREDLOCKTAG_TUPLE ;
 scalar_t__ PredicateLockExists (int const*) ;
 int PredicateLockTargetTagHashCode (int const*) ;
 scalar_t__ hash_search_with_hash_value (int ,int const*,int ,int ,int*) ;

__attribute__((used)) static void
PredicateLockAcquire(const PREDICATELOCKTARGETTAG *targettag)
{
 uint32 targettaghash;
 bool found;
 LOCALPREDICATELOCK *locallock;


 if (PredicateLockExists(targettag))
  return;

 if (CoarserLockCovers(targettag))
  return;


 targettaghash = PredicateLockTargetTagHashCode(targettag);


 locallock = (LOCALPREDICATELOCK *)
  hash_search_with_hash_value(LocalPredicateLockHash,
         targettag, targettaghash,
         HASH_ENTER, &found);
 locallock->held = 1;
 if (!found)
  locallock->childLocks = 0;


 CreatePredicateLock(targettag, targettaghash, MySerializableXact);






 if (CheckAndPromotePredicateLockRequest(targettag))
 {





 }
 else
 {

  if (GET_PREDICATELOCKTARGETTAG_TYPE(*targettag) != PREDLOCKTAG_TUPLE)
   DeleteChildTargetLocks(targettag);
 }
}
