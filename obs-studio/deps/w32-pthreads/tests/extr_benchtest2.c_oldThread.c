
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int old_mutex_lock (int *) ;
 int old_mutex_unlock (int *) ;
 int ox1 ;
 int ox2 ;
 scalar_t__ running ;
 int sched_yield () ;

void *
oldThread(void * arg)
{
  do
    {
      (void) old_mutex_lock(&ox1);
      (void) old_mutex_lock(&ox2);
      (void) old_mutex_unlock(&ox1);
      sched_yield();
      (void) old_mutex_unlock(&ox2);
    }
  while (running);

  return ((void*)0);
}
