
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pid_t ;
typedef int ncpu ;
typedef int mask ;
typedef int cpu_set_t ;
typedef int DWORD_PTR ;


 int CPU_COUNT (int *) ;
 int CTL_HW ;
 int GetCurrentProcess () ;
 scalar_t__ GetLastError () ;
 size_t GetProcessAffinityMask (int ,unsigned long*,unsigned long*) ;
 int HW_NCPU ;
 int MPC_GETNUMSPUS ;
 int _SC_NPROCESSORS_ONLN ;
 int _SC_NPROC_ONLN ;
 int getpid () ;
 int mpctl (int ,int ,int ) ;
 int perror (char*) ;
 int printf (char*,unsigned int) ;
 int sched_getaffinity (int ,int,int *) ;
 int sysconf (int ) ;
 int sysctl (int*,int,int*,size_t*,int *,int ) ;

unsigned
pixie_cpu_get_count(void)
{
    {
        pid_t pid;
        cpu_set_t mask;
        int err;


        pid = getpid();


        err = sched_getaffinity(pid, sizeof(mask), &mask);
        if (err) {
            perror("sched_getaffinity");
            return 1;
        } else {

            return 1;



        }
    }
}
