
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pthread_t ;
typedef int cpu_set_t ;


 int CPU_SET (int,int *) ;
 int CPU_ZERO (int *) ;
 int error (char*,...) ;
 int pthread_self () ;
 int pthread_setaffinity_np (int ,int,int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void* wake_cpu_thread(void* core) {
    pthread_t thread;
    cpu_set_t cpu_set;
    static size_t cpu_wakeups = 0;
    static int errors = 0;

    CPU_ZERO(&cpu_set);
    CPU_SET(*(int*)core, &cpu_set);

    thread = pthread_self();
    if(unlikely(pthread_setaffinity_np(thread, sizeof(cpu_set_t), &cpu_set))) {
        if(unlikely(errors < 8)) {
            error("Cannot set CPU affinity for core %d", *(int*)core);
            errors++;
        }
        else if(unlikely(errors < 9)) {
            error("CPU affinity errors are disabled");
            errors++;
        }
    }


    cpu_wakeups++;

    return 0;
}
