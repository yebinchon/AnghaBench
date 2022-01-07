
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t threadnum; int started; } ;
typedef TYPE_1__ bag_t ;


 int PTHREAD_CANCEL_ASYNCHRONOUS ;
 int PTHREAD_CANCEL_DEFERRED ;
 int PTHREAD_CANCEL_DISABLE ;
 int PTHREAD_CANCEL_ENABLE ;
 int assert (int) ;
 scalar_t__ pthread_setcancelstate (int,int*) ;
 scalar_t__ pthread_setcanceltype (int,int*) ;
 TYPE_1__* threadbag ;

void *
mythread(void * arg)
{
  bag_t * bag = (bag_t *) arg;

  assert(bag == &threadbag[bag->threadnum]);
  assert(bag->started == 0);
  bag->started = 1;


  {
    int oldstate;
    int oldtype;

    assert(pthread_setcancelstate(PTHREAD_CANCEL_DISABLE, &oldstate) == 0);
    assert(oldstate == PTHREAD_CANCEL_ENABLE);
    assert(pthread_setcancelstate(PTHREAD_CANCEL_ENABLE, ((void*)0)) == 0);
    assert(pthread_setcancelstate(PTHREAD_CANCEL_DISABLE, ((void*)0)) == 0);
    assert(pthread_setcancelstate(oldstate, &oldstate) == 0);
    assert(oldstate == PTHREAD_CANCEL_DISABLE);

    assert(pthread_setcanceltype(PTHREAD_CANCEL_ASYNCHRONOUS, &oldtype) == 0);
    assert(oldtype == PTHREAD_CANCEL_DEFERRED);
    assert(pthread_setcanceltype(PTHREAD_CANCEL_DEFERRED, ((void*)0)) == 0);
    assert(pthread_setcanceltype(PTHREAD_CANCEL_ASYNCHRONOUS, ((void*)0)) == 0);
    assert(pthread_setcanceltype(oldtype, &oldtype) == 0);
    assert(oldtype == PTHREAD_CANCEL_ASYNCHRONOUS);
  }

  return 0;
}
