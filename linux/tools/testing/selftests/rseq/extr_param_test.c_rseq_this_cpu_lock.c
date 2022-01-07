
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct percpu_lock {TYPE_1__* c; } ;
struct TYPE_2__ {int v; } ;


 int rseq_cmpeqv_storev (int *,int ,int,int) ;
 int rseq_cpu_start () ;
 scalar_t__ rseq_likely (int) ;
 int rseq_smp_acquire__after_ctrl_dep () ;

__attribute__((used)) static int rseq_this_cpu_lock(struct percpu_lock *lock)
{
 int cpu;

 for (;;) {
  int ret;

  cpu = rseq_cpu_start();
  ret = rseq_cmpeqv_storev(&lock->c[cpu].v,
      0, 1, cpu);
  if (rseq_likely(!ret))
   break;

 }




 rseq_smp_acquire__after_ctrl_dep();
 return cpu;
}
