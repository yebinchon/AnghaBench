
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t threadnum; int started; } ;
typedef TYPE_1__ bag_t ;
struct TYPE_5__ {scalar_t__ shared; int lock; int notbusy; } ;


 int abstime ;
 int assert (int) ;
 int awoken ;
 TYPE_3__ cvthing ;
 int pthread_cleanup_pop (int ) ;
 int pthread_cleanup_push (scalar_t__ (*) (int *),void*) ;
 scalar_t__ pthread_cond_timedwait (int *,int *,int *) ;
 scalar_t__ pthread_mutex_lock (int *) ;
 scalar_t__ pthread_mutex_unlock (int *) ;
 int start_flag ;
 TYPE_1__* threadbag ;

__attribute__((used)) static void *
mythread(void * arg)
{
  bag_t * bag = (bag_t *) arg;

  assert(bag == &threadbag[bag->threadnum]);
  assert(bag->started == 0);
  bag->started = 1;


  assert(pthread_mutex_lock(&start_flag) == 0);
  assert(pthread_mutex_unlock(&start_flag) == 0);

  assert(pthread_mutex_lock(&cvthing.lock) == 0);




  pthread_cleanup_push(pthread_mutex_unlock, (void *) &cvthing.lock);

  while (! (cvthing.shared > 0))
    assert(pthread_cond_timedwait(&cvthing.notbusy, &cvthing.lock, &abstime) == 0);

  pthread_cleanup_pop(0);




  assert(cvthing.shared > 0);

  awoken++;

  assert(pthread_mutex_unlock(&cvthing.lock) == 0);

  return (void *) 0;
}
