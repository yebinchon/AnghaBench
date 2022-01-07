
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sched_yield () ;
 int touch () ;

__attribute__((used)) static void *yield_thread2(void *arg)
{
 while (1) {
  sched_yield();
  touch();
 }

 return ((void*)0);
}
