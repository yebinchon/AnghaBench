
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int numLockOwners; TYPE_1__* lockOwners; } ;
struct TYPE_6__ {scalar_t__ owner; scalar_t__ nLocks; } ;
typedef scalar_t__ ResourceOwner ;
typedef TYPE_1__ LOCALLOCKOWNER ;
typedef TYPE_2__ LOCALLOCK ;


 scalar_t__ CurrentResourceOwner ;
 int ResourceOwnerForgetLock (scalar_t__,TYPE_2__*) ;
 int ResourceOwnerRememberLock (scalar_t__,TYPE_2__*) ;

__attribute__((used)) static void
LockReassignOwner(LOCALLOCK *locallock, ResourceOwner parent)
{
 LOCALLOCKOWNER *lockOwners;
 int i;
 int ic = -1;
 int ip = -1;





 lockOwners = locallock->lockOwners;
 for (i = locallock->numLockOwners - 1; i >= 0; i--)
 {
  if (lockOwners[i].owner == CurrentResourceOwner)
   ic = i;
  else if (lockOwners[i].owner == parent)
   ip = i;
 }

 if (ic < 0)
  return;

 if (ip < 0)
 {

  lockOwners[ic].owner = parent;
  ResourceOwnerRememberLock(parent, locallock);
 }
 else
 {

  lockOwners[ip].nLocks += lockOwners[ic].nLocks;

  locallock->numLockOwners--;
  if (ic < locallock->numLockOwners)
   lockOwners[ic] = lockOwners[locallock->numLockOwners];
 }
 ResourceOwnerForgetLock(CurrentResourceOwner, locallock);
}
