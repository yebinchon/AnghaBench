
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t threadnum; int started; } ;
typedef TYPE_1__ bag_t ;


 int Sleep (int) ;
 int assert (int) ;
 size_t errno ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int stop_here ;
 TYPE_1__* threadbag ;

void *
mythread(void * arg)
{
  bag_t * bag = (bag_t *) arg;

  assert(bag == &threadbag[bag->threadnum]);
  assert(bag->started == 0);
  bag->started = 1;

  errno = bag->threadnum;

  Sleep(1000);

  pthread_mutex_lock(&stop_here);

  assert(errno == bag->threadnum);

  pthread_mutex_unlock(&stop_here);

  Sleep(1000);

  return 0;
}
