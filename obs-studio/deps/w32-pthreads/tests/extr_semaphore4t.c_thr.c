
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int) ;
 int s ;
 scalar_t__ sem_timedwait (int *,int *) ;

void *
thr (void * arg)
{
  assert(sem_timedwait(&s, ((void*)0)) == 0);
  return ((void*)0);
}
