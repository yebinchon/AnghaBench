
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ DEBUG ;
 int sched_yield () ;
 int sleep (int) ;

void *tm_una_pong(void *not_used)
{

 if (DEBUG)
  sleep(1);


 while (1)
  sched_yield();
}
