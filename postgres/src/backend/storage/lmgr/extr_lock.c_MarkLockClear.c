
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ nLocks; int lockCleared; } ;
typedef TYPE_1__ LOCALLOCK ;


 int Assert (int) ;

void
MarkLockClear(LOCALLOCK *locallock)
{
 Assert(locallock->nLocks > 0);
 locallock->lockCleared = 1;
}
