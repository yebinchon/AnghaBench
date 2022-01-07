
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ int32_t ;


 int abort () ;
 int perror (char*) ;
 scalar_t__ sched_getcpu () ;

int32_t rseq_fallback_current_cpu(void)
{
 int32_t cpu;

 cpu = sched_getcpu();
 if (cpu < 0) {
  perror("sched_getcpu()");
  abort();
 }
 return cpu;
}
