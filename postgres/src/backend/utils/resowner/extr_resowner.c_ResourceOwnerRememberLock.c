
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t nlocks; int ** locks; } ;
typedef TYPE_1__* ResourceOwner ;
typedef int LOCALLOCK ;


 int Assert (int ) ;
 size_t MAX_RESOWNER_LOCKS ;

void
ResourceOwnerRememberLock(ResourceOwner owner, LOCALLOCK *locallock)
{
 Assert(locallock != ((void*)0));

 if (owner->nlocks > MAX_RESOWNER_LOCKS)
  return;

 if (owner->nlocks < MAX_RESOWNER_LOCKS)
  owner->locks[owner->nlocks] = locallock;
 else
 {

 }
 owner->nlocks++;
}
