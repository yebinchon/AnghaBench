
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int me ;
 int pthread_self () ;

void *
entry(void * arg)
{
  me = pthread_self();

  return arg;
}
