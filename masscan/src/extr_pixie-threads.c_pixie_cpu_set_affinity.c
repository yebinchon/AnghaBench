
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pthread_t ;
typedef int cpu_set_t ;
typedef scalar_t__ DWORD_PTR ;


 int CPU_SET (unsigned int,int *) ;
 int CPU_ZERO (int *) ;
 int GetCurrentThread () ;
 scalar_t__ GetLastError () ;
 scalar_t__ SetThreadAffinityMask (int ,scalar_t__) ;
 int UNUSEDPARM (int) ;
 int errno ;
 int fprintf (int ,char*,int) ;
 int pthread_self () ;
 int pthread_setaffinity_np (int ,int,int *) ;
 int stderr ;

void
pixie_cpu_set_affinity(unsigned processor)
{
    int x;
    pthread_t thread = pthread_self();
    cpu_set_t cpuset;

    CPU_ZERO(&cpuset);

    CPU_SET(processor+1, &cpuset);

    x = pthread_setaffinity_np(thread, sizeof(cpu_set_t), &cpuset);
    if (x != 0) {
        fprintf(stderr, "set_affinity: returned error linux:%d\n", errno);
    }




}
