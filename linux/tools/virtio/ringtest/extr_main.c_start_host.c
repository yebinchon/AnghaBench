
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pthread_exit (int *) ;
 int run_host () ;
 int set_affinity (void*) ;

void *start_host(void *arg)
{
 set_affinity(arg);
 run_host();
 pthread_exit(((void*)0));
}
