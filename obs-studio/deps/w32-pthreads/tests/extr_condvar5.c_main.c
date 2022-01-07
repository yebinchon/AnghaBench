
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct timespec {long tv_sec; int tv_nsec; int member_1; int member_0; } ;
struct TYPE_8__ {int * p; } ;
typedef TYPE_1__ pthread_t ;
struct TYPE_10__ {scalar_t__ shared; int * notbusy; int * lock; } ;
struct TYPE_9__ {int const millitm; scalar_t__ time; } ;
typedef TYPE_2__ PTW32_STRUCT_TIMEB ;
typedef int DWORD ;


 scalar_t__ ETIMEDOUT ;
 int NUMTHREADS ;
 int * PTHREAD_COND_INITIALIZER ;
 int * PTHREAD_MUTEX_INITIALIZER ;
 int PTW32_FTIME (TYPE_2__*) ;
 int assert (int) ;
 TYPE_6__ cvthing ;
 int mythread ;
 scalar_t__ pthread_cond_destroy (int **) ;
 scalar_t__ pthread_cond_timedwait (int **,int **,struct timespec*) ;
 scalar_t__ pthread_create (TYPE_1__*,int *,int ,void*) ;
 scalar_t__ pthread_join (TYPE_1__,int *) ;
 scalar_t__ pthread_mutex_destroy (int **) ;
 scalar_t__ pthread_mutex_lock (int **) ;
 scalar_t__ pthread_mutex_unlock (int **) ;
 TYPE_1__ pthread_self () ;

int
main()
{
  pthread_t t[NUMTHREADS];
  struct timespec abstime = { 0, 0 };
  PTW32_STRUCT_TIMEB currSysTime;
  const DWORD NANOSEC_PER_MILLISEC = 1000000;

  cvthing.shared = 0;

  assert((t[0] = pthread_self()).p != ((void*)0));

  assert(cvthing.notbusy == PTHREAD_COND_INITIALIZER);

  assert(cvthing.lock == PTHREAD_MUTEX_INITIALIZER);

  assert(pthread_mutex_lock(&cvthing.lock) == 0);

  assert(cvthing.lock != PTHREAD_MUTEX_INITIALIZER);


  PTW32_FTIME(&currSysTime);

  abstime.tv_sec = (long)currSysTime.time;
  abstime.tv_nsec = NANOSEC_PER_MILLISEC * currSysTime.millitm;

  abstime.tv_sec += 5;

  assert(pthread_cond_timedwait(&cvthing.notbusy, &cvthing.lock, &abstime) == ETIMEDOUT);

  assert(cvthing.notbusy != PTHREAD_COND_INITIALIZER);

  assert(pthread_create(&t[1], ((void*)0), mythread, (void *) 1) == 0);

  PTW32_FTIME(&currSysTime);

  abstime.tv_sec = (long)currSysTime.time;
  abstime.tv_nsec = NANOSEC_PER_MILLISEC * currSysTime.millitm;

  abstime.tv_sec += 5;

  while (! (cvthing.shared > 0))
    assert(pthread_cond_timedwait(&cvthing.notbusy, &cvthing.lock, &abstime) == 0);

  assert(cvthing.shared > 0);

  assert(pthread_mutex_unlock(&cvthing.lock) == 0);

  assert(pthread_join(t[1], ((void*)0)) == 0);

  assert(pthread_mutex_destroy(&cvthing.lock) == 0);

  assert(cvthing.lock == ((void*)0));

  assert(pthread_cond_destroy(&cvthing.notbusy) == 0);

  assert(cvthing.notbusy == ((void*)0));

  return 0;
}
