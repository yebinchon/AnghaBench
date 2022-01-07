
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sched_param {int sched_priority; } ;
typedef int pthread_t ;
struct TYPE_3__ {int myPrio; int threadnum; size_t oncenum; int w32Thread; } ;
typedef TYPE_1__ bag_t ;
struct TYPE_4__ {int cs; int i; } ;


 int EnterCriticalSection (int *) ;
 int LeaveCriticalSection (int *) ;
 int SCHED_OTHER ;
 int assert (int) ;
 int mycleanupfunc ;
 int myinitfunc ;
 TYPE_2__ numThreads ;
 int * once ;
 int pthread_cancel (int ) ;
 int pthread_cleanup_pop (int) ;
 int pthread_cleanup_push (int ,void*) ;
 int pthread_getw32threadhandle_np (int ) ;
 scalar_t__ pthread_once (int *,int ) ;
 int pthread_self () ;
 int pthread_setschedparam (int ,int ,struct sched_param*) ;

void *
mythread(void * arg)
{
  bag_t * bag = (bag_t *) arg;
  struct sched_param param;







  pthread_t self = pthread_self();
  bag->w32Thread = pthread_getw32threadhandle_np(self);



  bag->myPrio = (bag->threadnum % 5) - 2;
  param.sched_priority = bag->myPrio;
  pthread_setschedparam(self, SCHED_OTHER, &param);


  pthread_cancel(self);





  assert(pthread_once(&once[bag->oncenum], myinitfunc) == 0);

  EnterCriticalSection(&numThreads.cs);
  numThreads.i++;
  LeaveCriticalSection(&numThreads.cs);
  return 0;
}
