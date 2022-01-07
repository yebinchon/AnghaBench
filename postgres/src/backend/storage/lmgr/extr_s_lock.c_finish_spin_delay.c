
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ cur_delay; } ;
typedef TYPE_1__ SpinDelayStatus ;


 scalar_t__ MAX_SPINS_PER_DELAY ;
 scalar_t__ MIN_SPINS_PER_DELAY ;
 scalar_t__ Max (scalar_t__,scalar_t__) ;
 scalar_t__ Min (scalar_t__,scalar_t__) ;
 scalar_t__ spins_per_delay ;

void
finish_spin_delay(SpinDelayStatus *status)
{
 if (status->cur_delay == 0)
 {

  if (spins_per_delay < MAX_SPINS_PER_DELAY)
   spins_per_delay = Min(spins_per_delay + 100, MAX_SPINS_PER_DELAY);
 }
 else
 {
  if (spins_per_delay > MIN_SPINS_PER_DELAY)
   spins_per_delay = Max(spins_per_delay - 1, MIN_SPINS_PER_DELAY);
 }
}
