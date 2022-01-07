
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int value; int cv; int mx; } ;


 int Sleep (int) ;
 int allExit ;
 int assert (int) ;
 int bias ;
 TYPE_1__ control ;
 int holdBarrier ;
 int pthread_barrier_wait (int *) ;
 scalar_t__ pthread_cond_signal (int *) ;
 scalar_t__ pthread_mutex_lock (int *) ;
 scalar_t__ pthread_mutex_unlock (int *) ;
 int readyBarrier ;
 int signalsSent ;
 scalar_t__ signalsTakenCount ;
 int startBarrier ;
 int timeout ;
 scalar_t__ timeoutCount ;

void *
masterThread (void * arg)
{
  int dither = (int)(size_t)arg;

  timeout = (int)(size_t)arg;

  pthread_barrier_wait(&startBarrier);

  do
    {
      int sleepTime;

      assert(pthread_mutex_lock(&control.mx) == 0);
      control.value = timeout;
      assert(pthread_mutex_unlock(&control.mx) == 0);
      if (signalsSent % timeout == 0)
 {
          if (timeoutCount > signalsTakenCount)
     {
       bias++;
     }
          else if (timeoutCount < signalsTakenCount)
     {
       bias--;
     }
   if (bias < -timeout || bias > timeout)
     {
       timeout++;
     }
 }
      dither = (dither + 1 ) % (timeout * 2);
      sleepTime = (timeout - bias + dither) / 2;
      Sleep(sleepTime);
      assert(pthread_cond_signal(&control.cv) == 0);
      signalsSent++;

      pthread_barrier_wait(&holdBarrier);
      pthread_barrier_wait(&readyBarrier);
    }
  while (!allExit);

  return ((void*)0);
}
