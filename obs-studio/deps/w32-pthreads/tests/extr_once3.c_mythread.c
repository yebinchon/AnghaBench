
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cs; int i; } ;


 int EnterCriticalSection (int *) ;
 int LeaveCriticalSection (int *) ;
 int assert (int) ;
 int myfunc ;
 TYPE_1__ numThreads ;
 int * once ;
 scalar_t__ pthread_cancel (int ) ;
 scalar_t__ pthread_once (int *,int ) ;
 int pthread_self () ;

void *
mythread(void * arg)
{






  assert(pthread_cancel(pthread_self()) == 0);
  assert(pthread_once(&once[(int)(size_t)arg], myfunc) == 0);
  EnterCriticalSection(&numThreads.cs);
  numThreads.i++;
  LeaveCriticalSection(&numThreads.cs);
  return (void*)(size_t)0;
}
