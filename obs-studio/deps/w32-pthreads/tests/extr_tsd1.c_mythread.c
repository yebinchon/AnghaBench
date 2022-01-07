
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pthread_barrier_wait (int *) ;
 int setkey (void*) ;
 int startBarrier ;

__attribute__((used)) static void *
mythread(void * arg)
{
  (void) pthread_barrier_wait(&startBarrier);

  setkey(arg);

  return 0;


}
