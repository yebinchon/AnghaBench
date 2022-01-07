
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int held; int childLocks; } ;
typedef int PREDICATELOCKTARGETTAG ;
typedef TYPE_1__ LOCALPREDICATELOCK ;


 scalar_t__ GetParentPredicateLockTag (int *,int *) ;
 int HASH_ENTER ;
 int LocalPredicateLockHash ;
 int MaxPredicateChildLocks (int *) ;
 int PredicateLockAcquire (int *) ;
 scalar_t__ hash_search (int ,int *,int ,int*) ;

__attribute__((used)) static bool
CheckAndPromotePredicateLockRequest(const PREDICATELOCKTARGETTAG *reqtag)
{
 PREDICATELOCKTARGETTAG targettag,
    nexttag,
    promotiontag;
 LOCALPREDICATELOCK *parentlock;
 bool found,
    promote;

 promote = 0;

 targettag = *reqtag;


 while (GetParentPredicateLockTag(&targettag, &nexttag))
 {
  targettag = nexttag;
  parentlock = (LOCALPREDICATELOCK *) hash_search(LocalPredicateLockHash,
              &targettag,
              HASH_ENTER,
              &found);
  if (!found)
  {
   parentlock->held = 0;
   parentlock->childLocks = 1;
  }
  else
   parentlock->childLocks++;

  if (parentlock->childLocks >
   MaxPredicateChildLocks(&targettag))
  {






   promotiontag = targettag;
   promote = 1;
  }
 }

 if (promote)
 {

  PredicateLockAcquire(&promotiontag);
  return 1;
 }
 else
  return 0;
}
