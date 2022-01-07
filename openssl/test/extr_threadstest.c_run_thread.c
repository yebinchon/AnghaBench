
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int thread_t ;


 scalar_t__ pthread_create (int *,int *,int ,void*) ;
 int thread_run ;

__attribute__((used)) static int run_thread(thread_t *t, void (*f)(void))
{
    return pthread_create(t, ((void*)0), thread_run, *(void **) &f) == 0;
}
