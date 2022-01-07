
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int mode; int lock; } ;
struct TYPE_8__ {int numLockOwners; int nLocks; TYPE_1__ tag; TYPE_2__* lockOwners; } ;
struct TYPE_7__ {int nLocks; int * owner; } ;
typedef int * ResourceOwner ;
typedef TYPE_2__ LOCALLOCKOWNER ;
typedef TYPE_3__ LOCALLOCK ;


 int Assert (int) ;
 int * CurrentResourceOwner ;
 int LockRelease (int *,int ,int) ;
 int ResourceOwnerForgetLock (int *,TYPE_3__*) ;
 int WARNING ;
 int elog (int ,char*) ;

__attribute__((used)) static void
ReleaseLockIfHeld(LOCALLOCK *locallock, bool sessionLock)
{
 ResourceOwner owner;
 LOCALLOCKOWNER *lockOwners;
 int i;


 if (sessionLock)
  owner = ((void*)0);
 else
  owner = CurrentResourceOwner;


 lockOwners = locallock->lockOwners;
 for (i = locallock->numLockOwners - 1; i >= 0; i--)
 {
  if (lockOwners[i].owner == owner)
  {
   Assert(lockOwners[i].nLocks > 0);
   if (lockOwners[i].nLocks < locallock->nLocks)
   {




    locallock->nLocks -= lockOwners[i].nLocks;

    locallock->numLockOwners--;
    if (owner != ((void*)0))
     ResourceOwnerForgetLock(owner, locallock);
    if (i < locallock->numLockOwners)
     lockOwners[i] = lockOwners[locallock->numLockOwners];
   }
   else
   {
    Assert(lockOwners[i].nLocks == locallock->nLocks);

    lockOwners[i].nLocks = 1;
    locallock->nLocks = 1;
    if (!LockRelease(&locallock->tag.lock,
         locallock->tag.mode,
         sessionLock))
     elog(WARNING, "ReleaseLockIfHeld: failed??");
   }
   break;
  }
 }
}
