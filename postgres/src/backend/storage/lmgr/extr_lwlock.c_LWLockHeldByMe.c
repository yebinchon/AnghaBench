
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * lock; } ;
typedef int LWLock ;


 TYPE_1__* held_lwlocks ;
 int num_held_lwlocks ;

bool
LWLockHeldByMe(LWLock *l)
{
 int i;

 for (i = 0; i < num_held_lwlocks; i++)
 {
  if (held_lwlocks[i].lock == l)
   return 1;
 }
 return 0;
}
