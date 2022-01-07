
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int tv_sec; } ;
struct TYPE_4__ {int tv_sec; } ;
typedef int LPLONG ;


 int ETIMEDOUT ;
 int InterlockedIncrement (int ) ;
 TYPE_3__ abstime ;
 TYPE_1__ abstime2 ;
 int assert (int) ;
 int awoken ;
 int cv ;
 int mutex ;
 int pthread_cond_timedwait (int *,int *,TYPE_1__*) ;
 scalar_t__ pthread_mutex_lock (int *) ;
 scalar_t__ pthread_mutex_unlock (int *) ;
 int timedout ;

void *
mythread(void * arg)
{
  int result;

  assert(pthread_mutex_lock(&mutex) == 0);

  abstime2.tv_sec = abstime.tv_sec;

  if ((int) (size_t)arg % 3 == 0)
    {
      abstime2.tv_sec += 2;
    }

  result = pthread_cond_timedwait(&cv, &mutex, &abstime2);
  assert(pthread_mutex_unlock(&mutex) == 0);
  if (result == ETIMEDOUT)
    {
      InterlockedIncrement((LPLONG)&timedout);
    }
  else
    {
      InterlockedIncrement((LPLONG)&awoken);
    }


  return arg;
}
