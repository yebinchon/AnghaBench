
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GrantLockLocal (int ,int ) ;
 int awaitedLock ;
 int awaitedOwner ;

void
GrantAwaitedLock(void)
{
 GrantLockLocal(awaitedLock, awaitedOwner);
}
