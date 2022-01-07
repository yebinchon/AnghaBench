
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EnterCriticalSection (int *) ;
 int LeaveCriticalSection (int *) ;
 int cs1 ;
 int cs2 ;
 scalar_t__ running ;
 int sched_yield () ;

void *
CSThread(void * arg)
{
  do
    {
      EnterCriticalSection(&cs1);
      EnterCriticalSection(&cs2);
      LeaveCriticalSection(&cs1);
      sched_yield();
      LeaveCriticalSection(&cs2);
    }
  while (running);

  return ((void*)0);
}
