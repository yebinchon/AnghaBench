
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pthread_exit (int *) ;
 int run_guest () ;
 int set_affinity (void*) ;

void *start_guest(void *arg)
{
 set_affinity(arg);
 run_guest();
 pthread_exit(((void*)0));
}
