
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int test_affinity ;
typedef int cpu_set_t ;
typedef int affinity ;


 int CPU_CLR (int,int *) ;
 scalar_t__ CPU_ISSET (int,int *) ;
 int CPU_SET (int,int *) ;
 int CPU_SETSIZE ;
 int CPU_ZERO (int *) ;
 int assert (int) ;
 int rseq_cpu_start () ;
 int rseq_current_cpu () ;
 int rseq_current_cpu_raw () ;
 int sched_getaffinity (int ,int,int *) ;
 int sched_getcpu () ;
 int sched_setaffinity (int ,int,int *) ;

void test_cpu_pointer(void)
{
 cpu_set_t affinity, test_affinity;
 int i;

 sched_getaffinity(0, sizeof(affinity), &affinity);
 CPU_ZERO(&test_affinity);
 for (i = 0; i < CPU_SETSIZE; i++) {
  if (CPU_ISSET(i, &affinity)) {
   CPU_SET(i, &test_affinity);
   sched_setaffinity(0, sizeof(test_affinity),
     &test_affinity);
   assert(sched_getcpu() == i);
   assert(rseq_current_cpu() == i);
   assert(rseq_current_cpu_raw() == i);
   assert(rseq_cpu_start() == i);
   CPU_CLR(i, &test_affinity);
  }
 }
 sched_setaffinity(0, sizeof(affinity), &affinity);
}
