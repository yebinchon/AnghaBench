
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timespec {int dummy; } ;
struct TYPE_2__ {int mx; int value; int cv; } ;


 scalar_t__ ETIMEDOUT ;
 int allExit ;
 int assert (int) ;
 TYPE_1__ control ;
 int holdBarrier ;
 int millisecondsFromNow (struct timespec*,int ) ;
 int pthread_barrier_wait (int *) ;
 scalar_t__ pthread_cond_timedwait (int *,int *,int ) ;
 scalar_t__ pthread_mutex_lock (int *) ;
 scalar_t__ pthread_mutex_unlock (int *) ;
 int readyBarrier ;
 int signalsTakenCount ;
 int startBarrier ;
 int timeoutCount ;

void *
slaveThread (void * arg)
{
  struct timespec time;

  pthread_barrier_wait(&startBarrier);

  do
    {
      assert(pthread_mutex_lock(&control.mx) == 0);
      if (pthread_cond_timedwait(&control.cv,
     &control.mx,
     millisecondsFromNow(&time, control.value)) == ETIMEDOUT)
 {
   timeoutCount++;
 }
      else
 {
   signalsTakenCount++;
 }
      assert(pthread_mutex_unlock(&control.mx) == 0);

      pthread_barrier_wait(&holdBarrier);
      pthread_barrier_wait(&readyBarrier);
    }
  while (!allExit);

  return ((void*)0);
}
