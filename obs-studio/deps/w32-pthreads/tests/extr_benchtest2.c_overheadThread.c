
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ running ;
 int sched_yield () ;

void *
overheadThread(void * arg)
{
  do
    {
      sched_yield();
    }
  while (running);

  return ((void*)0);
}
