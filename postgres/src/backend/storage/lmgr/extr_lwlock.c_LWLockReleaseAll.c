
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lock; } ;


 int HOLD_INTERRUPTS () ;
 int LWLockRelease (int ) ;
 TYPE_1__* held_lwlocks ;
 int num_held_lwlocks ;

void
LWLockReleaseAll(void)
{
 while (num_held_lwlocks > 0)
 {
  HOLD_INTERRUPTS();

  LWLockRelease(held_lwlocks[num_held_lwlocks - 1].lock);
 }
}
