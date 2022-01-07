
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int) ;
 scalar_t__ pthread_detach (int ) ;
 int pthread_self () ;
 int s ;
 scalar_t__ sem_wait (int *) ;

void *
thr (void * arg)
{
  assert(sem_wait(&s) == 0);
  assert(pthread_detach(pthread_self()) == 0);
  return ((void*)0);
}
