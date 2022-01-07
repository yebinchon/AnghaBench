
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int notbusy; int lock; int shared; } ;


 int assert (int) ;
 TYPE_1__ cvthing ;
 scalar_t__ pthread_cond_broadcast (int *) ;
 scalar_t__ pthread_mutex_lock (int *) ;
 scalar_t__ pthread_mutex_unlock (int *) ;

void *
mythread(void * arg)
{
  assert(pthread_mutex_lock(&cvthing.lock) == 0);
  cvthing.shared++;
  assert(pthread_mutex_unlock(&cvthing.lock) == 0);

  assert(pthread_cond_broadcast(&cvthing.notbusy) == 0);

  return (void *) 0;
}
