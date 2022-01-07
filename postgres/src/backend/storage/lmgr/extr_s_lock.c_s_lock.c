
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int slock_t ;
struct TYPE_5__ {int delays; } ;
typedef TYPE_1__ SpinDelayStatus ;


 scalar_t__ TAS_SPIN (int volatile*) ;
 int finish_spin_delay (TYPE_1__*) ;
 int init_spin_delay (TYPE_1__*,char const*,int,char const*) ;
 int perform_spin_delay (TYPE_1__*) ;

int
s_lock(volatile slock_t *lock, const char *file, int line, const char *func)
{
 SpinDelayStatus delayStatus;

 init_spin_delay(&delayStatus, file, line, func);

 while (TAS_SPIN(lock))
 {
  perform_spin_delay(&delayStatus);
 }

 finish_spin_delay(&delayStatus);

 return delayStatus.delays;
}
