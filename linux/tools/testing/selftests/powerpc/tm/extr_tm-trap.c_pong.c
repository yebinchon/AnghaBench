
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit_from_pong ;
 int sched_yield () ;

void *pong(void *not_used)
{
 while (!exit_from_pong)





  sched_yield();

 return ((void*)0);
}
