
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int siginfo_t ;


 int sched_yield () ;
 scalar_t__ segv_wait ;

__attribute__((used)) static void segv_handler(int signo, siginfo_t *info, void *extra)
{
 while (segv_wait) {
  sched_yield();
 }

}
