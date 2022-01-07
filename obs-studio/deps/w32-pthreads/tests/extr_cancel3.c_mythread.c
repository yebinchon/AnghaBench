
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t threadnum; int started; int count; } ;
typedef TYPE_1__ bag_t ;


 scalar_t__ PTHREAD_CANCELED ;
 int PTHREAD_CANCEL_ASYNCHRONOUS ;
 int PTHREAD_CANCEL_ENABLE ;
 int Sleep (int) ;
 int assert (int) ;
 scalar_t__ pthread_setcancelstate (int ,int *) ;
 scalar_t__ pthread_setcanceltype (int ,int *) ;
 TYPE_1__* threadbag ;

void *
mythread (void *arg)
{
  void* result = (void*)((int)(size_t)PTHREAD_CANCELED + 1);
  bag_t *bag = (bag_t *) arg;

  assert (bag == &threadbag[bag->threadnum]);
  assert (bag->started == 0);
  bag->started = 1;



  assert (pthread_setcancelstate (PTHREAD_CANCEL_ENABLE, ((void*)0)) == 0);

  assert (pthread_setcanceltype (PTHREAD_CANCEL_ASYNCHRONOUS, ((void*)0)) == 0);





  for (bag->count = 0; bag->count < 100; bag->count++)
    Sleep (100);

  return result;
}
