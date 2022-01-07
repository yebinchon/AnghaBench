
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int pthread_t ;
struct TYPE_9__ {long tv_sec; int tv_nsec; } ;
struct TYPE_8__ {char* nWaitersBlocked; char* nWaitersGone; char* nWaitersToUnblock; } ;
struct TYPE_7__ {int const millitm; scalar_t__ time; } ;
typedef TYPE_1__ PTW32_STRUCT_TIMEB ;
typedef int DWORD ;


 int NUMTHREADS ;
 int PTW32_FTIME (TYPE_1__*) ;
 TYPE_5__ abstime ;
 int assert (int) ;
 TYPE_2__* cv ;
 char** error_string ;
 int fflush (int ) ;
 int fprintf (int ,char*,char*) ;
 int mutex ;
 int mythread ;
 int pthread_cond_destroy (TYPE_2__**) ;
 scalar_t__ pthread_cond_init (TYPE_2__**,int *) ;
 scalar_t__ pthread_create (int *,int *,int ,void*) ;
 scalar_t__ pthread_join (int ,void**) ;
 scalar_t__ pthread_mutex_init (int *,int *) ;
 scalar_t__ pthread_mutex_lock (int *) ;
 scalar_t__ pthread_mutex_unlock (int *) ;
 int stderr ;

int
main()
{
  int i;
  pthread_t t[NUMTHREADS + 1];
  void* result = (void*)0;
  PTW32_STRUCT_TIMEB currSysTime;
  const DWORD NANOSEC_PER_MILLISEC = 1000000;

  assert(pthread_cond_init(&cv, ((void*)0)) == 0);

  assert(pthread_mutex_init(&mutex, ((void*)0)) == 0);


  PTW32_FTIME(&currSysTime);

  abstime.tv_sec = (long)currSysTime.time;
  abstime.tv_nsec = NANOSEC_PER_MILLISEC * currSysTime.millitm;

  abstime.tv_sec += 5;

  assert(pthread_mutex_lock(&mutex) == 0);

  for (i = 1; i <= NUMTHREADS; i++)
    {
      assert(pthread_create(&t[i], ((void*)0), mythread, (void *)(size_t)i) == 0);
    }

  assert(pthread_mutex_unlock(&mutex) == 0);

  for (i = 1; i <= NUMTHREADS; i++)
    {
      assert(pthread_join(t[i], &result) == 0);
 assert((int)(size_t)result == i);
    }

  {
  int result = pthread_cond_destroy(&cv);
  if (result != 0)
    {
      fprintf(stderr, "Result = %s\n", error_string[result]);
 fprintf(stderr, "\tWaitersBlocked = %ld\n", cv->nWaitersBlocked);
 fprintf(stderr, "\tWaitersGone = %ld\n", cv->nWaitersGone);
 fprintf(stderr, "\tWaitersToUnblock = %ld\n", cv->nWaitersToUnblock);
 fflush(stderr);
    }
  assert(result == 0);
  }

  return 0;
}
