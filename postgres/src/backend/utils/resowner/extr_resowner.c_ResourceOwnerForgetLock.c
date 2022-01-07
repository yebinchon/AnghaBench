
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int nlocks; int name; int ** locks; } ;
typedef TYPE_1__* ResourceOwner ;
typedef int LOCALLOCK ;


 int Assert (int) ;
 int ERROR ;
 int MAX_RESOWNER_LOCKS ;
 int elog (int ,char*,int *,int ) ;

void
ResourceOwnerForgetLock(ResourceOwner owner, LOCALLOCK *locallock)
{
 int i;

 if (owner->nlocks > MAX_RESOWNER_LOCKS)
  return;

 Assert(owner->nlocks > 0);
 for (i = owner->nlocks - 1; i >= 0; i--)
 {
  if (locallock == owner->locks[i])
  {
   owner->locks[i] = owner->locks[owner->nlocks - 1];
   owner->nlocks--;
   return;
  }
 }
 elog(ERROR, "lock reference %p is not owned by resource owner %s",
   locallock, owner->name);
}
