
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ spins; scalar_t__ delays; int cur_delay; int func; int line; int file; } ;
typedef TYPE_1__ SpinDelayStatus ;


 double MAX_DELAY_USEC ;
 scalar_t__ MAX_RANDOM_VALUE ;
 void* MIN_DELAY_USEC ;
 scalar_t__ NUM_DELAYS ;
 int SPIN_DELAY () ;
 int fflush (int ) ;
 int fprintf (int ,char*) ;
 int pg_usleep (int) ;
 scalar_t__ random () ;
 int s_lock_stuck (int ,int ,int ) ;
 scalar_t__ spins_per_delay ;
 int stdout ;

void
perform_spin_delay(SpinDelayStatus *status)
{

 SPIN_DELAY();


 if (++(status->spins) >= spins_per_delay)
 {
  if (++(status->delays) > NUM_DELAYS)
   s_lock_stuck(status->file, status->line, status->func);

  if (status->cur_delay == 0)
   status->cur_delay = MIN_DELAY_USEC;

  pg_usleep(status->cur_delay);







  status->cur_delay += (int) (status->cur_delay *
         ((double) random() / (double) MAX_RANDOM_VALUE) + 0.5);

  if (status->cur_delay > MAX_DELAY_USEC)
   status->cur_delay = MIN_DELAY_USEC;

  status->spins = 0;
 }
}
