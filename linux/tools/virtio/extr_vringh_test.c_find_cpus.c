
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int set ;
typedef int cpu_set_t ;


 int CPU_SET (unsigned int,int *) ;
 int CPU_ZERO (int *) ;
 int getpid () ;
 scalar_t__ sched_setaffinity (int ,int,int *) ;

__attribute__((used)) static void find_cpus(unsigned int *first, unsigned int *last)
{
 unsigned int i;

 *first = -1U;
 *last = 0;
 for (i = 0; i < 4096; i++) {
  cpu_set_t set;
  CPU_ZERO(&set);
  CPU_SET(i, &set);
  if (sched_setaffinity(getpid(), sizeof(set), &set) == 0) {
   if (i < *first)
    *first = i;
   if (i > *last)
    *last = i;
  }
 }
}
