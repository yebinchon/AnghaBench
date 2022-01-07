
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int held; } ;
typedef int PREDICATELOCKTARGETTAG ;
typedef TYPE_1__ LOCALPREDICATELOCK ;


 int HASH_FIND ;
 int LocalPredicateLockHash ;
 scalar_t__ hash_search (int ,int const*,int ,int *) ;

__attribute__((used)) static bool
PredicateLockExists(const PREDICATELOCKTARGETTAG *targettag)
{
 LOCALPREDICATELOCK *lock;


 lock = (LOCALPREDICATELOCK *) hash_search(LocalPredicateLockHash,
             targettag,
             HASH_FIND, ((void*)0));

 if (!lock)
  return 0;





 return lock->held;
}
