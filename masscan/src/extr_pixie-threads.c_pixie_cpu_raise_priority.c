
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pthread_t ;
typedef int pthread_attr_t ;
typedef scalar_t__ DWORD_PTR ;


 int GetCurrentThread () ;
 scalar_t__ GetLastError () ;
 scalar_t__ SetThreadPriority (int ,int ) ;
 int THREAD_PRIORITY_HIGHEST ;
 int fprintf (int ,char*,unsigned int) ;
 int pthread_attr_destroy (int *) ;
 int pthread_attr_getschedpolicy (int *,int*) ;
 int pthread_attr_init (int *) ;
 int pthread_self () ;
 int pthread_setschedprio (int ,int) ;
 int sched_get_priority_max (int) ;
 int stderr ;

void
pixie_cpu_raise_priority(void)
{







    pthread_t thread = pthread_self();
    pthread_attr_t thAttr;
    int policy = 0;
    int max_prio_for_policy = 0;

    pthread_attr_init(&thAttr);
    pthread_attr_getschedpolicy(&thAttr, &policy);
    max_prio_for_policy = sched_get_priority_max(policy);


    pthread_setschedprio(thread, max_prio_for_policy);
    pthread_attr_destroy(&thAttr);
    return;


}
