
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mx; int cv; } ;


 scalar_t__ FALSE ;
 unsigned int ITERATIONS ;
 scalar_t__ TRUE ;
 scalar_t__ allExit ;
 int assert (int) ;
 scalar_t__ bias ;
 TYPE_1__ control ;
 int holdBarrier ;
 int master ;
 int masterThread ;
 int printf (char*,int,int,int,int,int) ;
 scalar_t__ pthread_barrier_destroy (int *) ;
 scalar_t__ pthread_barrier_init (int *,int *,int) ;
 int pthread_barrier_wait (int *) ;
 scalar_t__ pthread_cond_destroy (int *) ;
 scalar_t__ pthread_create (int *,int *,int ,void*) ;
 scalar_t__ pthread_join (int ,int *) ;
 scalar_t__ pthread_mutex_destroy (int *) ;
 int readyBarrier ;
 int signalsSent ;
 int signalsTakenCount ;
 int slave ;
 int slaveThread ;
 int startBarrier ;
 int timeout ;
 int timeoutCount ;

int
main ()
{
  unsigned int i;

  assert(pthread_barrier_init(&startBarrier, ((void*)0), 3) == 0);
  assert(pthread_barrier_init(&readyBarrier, ((void*)0), 3) == 0);
  assert(pthread_barrier_init(&holdBarrier, ((void*)0), 3) == 0);

  assert(pthread_create(&master, ((void*)0), masterThread, (void *)(size_t)timeout) == 0);
  assert(pthread_create(&slave, ((void*)0), slaveThread, ((void*)0)) == 0);

  allExit = FALSE;

  pthread_barrier_wait(&startBarrier);

  for (i = 1; !allExit; i++)
    {
      pthread_barrier_wait(&holdBarrier);
      if (i >= ITERATIONS)
 {
   allExit = TRUE;
 }
      pthread_barrier_wait(&readyBarrier);
    }

  assert(pthread_join(slave, ((void*)0)) == 0);
  assert(pthread_join(master, ((void*)0)) == 0);

  printf("Signals sent = %d\nWait timeouts = %d\nSignals taken = %d\nBias = %d\nTimeout = %d\n",
  signalsSent,
  timeoutCount,
  signalsTakenCount,
  (int) bias,
  timeout);


  assert(pthread_barrier_destroy(&holdBarrier) == 0);
  assert(pthread_barrier_destroy(&readyBarrier) == 0);
  assert(pthread_barrier_destroy(&startBarrier) == 0);
  assert(pthread_cond_destroy(&control.cv) == 0);
  assert(pthread_mutex_destroy(&control.mx) == 0);


  return 0;
}
