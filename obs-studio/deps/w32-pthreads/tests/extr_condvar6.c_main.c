
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_8__ ;
typedef struct TYPE_13__ TYPE_7__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int * p; } ;
typedef TYPE_1__ pthread_t ;
struct TYPE_14__ {long tv_sec; int tv_nsec; } ;
struct TYPE_13__ {int * notbusy; int * lock; scalar_t__ shared; } ;
struct TYPE_12__ {int started; int threadnum; } ;
struct TYPE_11__ {int const millitm; scalar_t__ time; } ;
typedef TYPE_2__ PTW32_STRUCT_TIMEB ;
typedef int DWORD ;


 int NUMTHREADS ;
 int * PTHREAD_COND_INITIALIZER ;
 int * PTHREAD_MUTEX_INITIALIZER ;
 int PTW32_FTIME (TYPE_2__*) ;
 int Sleep (int) ;
 TYPE_8__ abstime ;
 int assert (int) ;
 int awoken ;
 TYPE_7__ cvthing ;
 int fprintf (int ,char*,int,int) ;
 int mythread ;
 scalar_t__ pthread_cond_broadcast (int **) ;
 scalar_t__ pthread_cond_destroy (int **) ;
 scalar_t__ pthread_create (TYPE_1__*,int *,int ,void*) ;
 scalar_t__ pthread_join (TYPE_1__,int *) ;
 scalar_t__ pthread_mutex_destroy (int **) ;
 scalar_t__ pthread_mutex_lock (int **) ;
 scalar_t__ pthread_mutex_unlock (int **) ;
 TYPE_1__ pthread_self () ;
 int * start_flag ;
 int stderr ;
 TYPE_3__* threadbag ;

int
main()
{
  int failed = 0;
  int i;
  pthread_t t[NUMTHREADS + 1];

  PTW32_STRUCT_TIMEB currSysTime;
  const DWORD NANOSEC_PER_MILLISEC = 1000000;

  cvthing.shared = 0;

  assert((t[0] = pthread_self()).p != ((void*)0));

  assert(cvthing.notbusy == PTHREAD_COND_INITIALIZER);

  assert(cvthing.lock == PTHREAD_MUTEX_INITIALIZER);

  assert(pthread_mutex_lock(&start_flag) == 0);

  PTW32_FTIME(&currSysTime);

  abstime.tv_sec = (long)currSysTime.time;
  abstime.tv_nsec = NANOSEC_PER_MILLISEC * currSysTime.millitm;

  abstime.tv_sec += 5;

  assert((t[0] = pthread_self()).p != ((void*)0));

  awoken = 0;

  for (i = 1; i <= NUMTHREADS; i++)
    {
      threadbag[i].started = 0;
      threadbag[i].threadnum = i;
      assert(pthread_create(&t[i], ((void*)0), mythread, (void *) &threadbag[i]) == 0);
    }





  assert(pthread_mutex_unlock(&start_flag) == 0);




  Sleep(1000);

  assert(pthread_mutex_lock(&cvthing.lock) == 0);
  cvthing.shared++;
  assert(pthread_mutex_unlock(&cvthing.lock) == 0);

  assert(pthread_cond_broadcast(&cvthing.notbusy) == 0);




  for (i = 1; i <= NUMTHREADS; i++)
    {
      assert(pthread_join(t[i], ((void*)0)) == 0);
    }





  assert(pthread_mutex_destroy(&cvthing.lock) == 0);

  assert(cvthing.lock == ((void*)0));

  assert(pthread_cond_destroy(&cvthing.notbusy) == 0);

  assert(cvthing.notbusy == ((void*)0));




  for (i = 1; i <= NUMTHREADS; i++)
    {
      failed = !threadbag[i].started;

      if (failed)
 {
   fprintf(stderr, "Thread %d: started %d\n", i, threadbag[i].started);
 }
    }

  assert(!failed);





  assert(awoken == NUMTHREADS);




  return 0;
}
