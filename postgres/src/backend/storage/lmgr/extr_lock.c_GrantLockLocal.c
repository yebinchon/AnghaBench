
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int numLockOwners; int maxLockOwners; int nLocks; TYPE_1__* lockOwners; } ;
struct TYPE_5__ {int nLocks; int * owner; } ;
typedef int * ResourceOwner ;
typedef TYPE_1__ LOCALLOCKOWNER ;
typedef TYPE_2__ LOCALLOCK ;


 int Assert (int) ;
 int ResourceOwnerRememberLock (int *,TYPE_2__*) ;

__attribute__((used)) static void
GrantLockLocal(LOCALLOCK *locallock, ResourceOwner owner)
{
 LOCALLOCKOWNER *lockOwners = locallock->lockOwners;
 int i;

 Assert(locallock->numLockOwners < locallock->maxLockOwners);

 locallock->nLocks++;

 for (i = 0; i < locallock->numLockOwners; i++)
 {
  if (lockOwners[i].owner == owner)
  {
   lockOwners[i].nLocks++;
   return;
  }
 }
 lockOwners[i].owner = owner;
 lockOwners[i].nLocks = 1;
 locallock->numLockOwners++;
 if (owner != ((void*)0))
  ResourceOwnerRememberLock(owner, locallock);
}
