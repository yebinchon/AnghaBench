
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct timespec {long tv_sec; int tv_nsec; int member_1; int member_0; } ;
struct TYPE_7__ {int * p; } ;
typedef TYPE_1__ pthread_t ;
struct TYPE_8__ {int const millitm; scalar_t__ time; } ;
typedef TYPE_2__ PTW32_STRUCT_TIMEB ;
typedef int DWORD ;


 int NUMTHREADS ;
 int PTW32_FTIME (TYPE_2__*) ;
 int assert (int) ;
 int cv ;
 int mutex ;
 int mythread ;
 scalar_t__ pthread_cond_destroy (int *) ;
 scalar_t__ pthread_cond_init (int *,int *) ;
 scalar_t__ pthread_cond_timedwait (int *,int *,struct timespec*) ;
 scalar_t__ pthread_create (TYPE_1__*,int *,int ,void*) ;
 scalar_t__ pthread_join (TYPE_1__,int *) ;
 scalar_t__ pthread_mutex_init (int *,int *) ;
 scalar_t__ pthread_mutex_lock (int *) ;
 scalar_t__ pthread_mutex_unlock (int *) ;
 TYPE_1__ pthread_self () ;
 scalar_t__ shared ;

int
main()
{
  pthread_t t[NUMTHREADS];
  struct timespec abstime = { 0, 0 };
  PTW32_STRUCT_TIMEB currSysTime;
  const DWORD NANOSEC_PER_MILLISEC = 1000000;

  assert((t[0] = pthread_self()).p != ((void*)0));

  assert(pthread_cond_init(&cv, ((void*)0)) == 0);

  assert(pthread_mutex_init(&mutex, ((void*)0)) == 0);

  assert(pthread_mutex_lock(&mutex) == 0);


  PTW32_FTIME(&currSysTime);

  abstime.tv_sec = (long)currSysTime.time;
  abstime.tv_nsec = NANOSEC_PER_MILLISEC * currSysTime.millitm;

  assert(pthread_create(&t[1], ((void*)0), mythread, (void *) 1) == 0);

  abstime.tv_sec += 5;

  while (! (shared > 0))
    assert(pthread_cond_timedwait(&cv, &mutex, &abstime) == 0);

  assert(shared > 0);

  assert(pthread_mutex_unlock(&mutex) == 0);

  assert(pthread_join(t[1], ((void*)0)) == 0);

  assert(pthread_cond_destroy(&cv) == 0);

  return 0;
}
