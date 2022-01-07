
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pthread_t ;
typedef int cpu_set_t ;


 int CPU_SET (long,int *) ;
 long CPU_SETSIZE ;
 int CPU_ZERO (int *) ;
 int assert (int) ;
 int pthread_self () ;
 int pthread_setaffinity_np (int ,int,int *) ;
 long strtol (char const*,char**,int ) ;

void set_affinity(const char *arg)
{
 cpu_set_t cpuset;
 int ret;
 pthread_t self;
 long int cpu;
 char *endptr;

 if (!arg)
  return;

 cpu = strtol(arg, &endptr, 0);
 assert(!*endptr);

 assert(cpu >= 0 && cpu < CPU_SETSIZE);

 self = pthread_self();
 CPU_ZERO(&cpuset);
 CPU_SET(cpu, &cpuset);

 ret = pthread_setaffinity_np(self, sizeof(cpu_set_t), &cpuset);
 assert(!ret);
}
