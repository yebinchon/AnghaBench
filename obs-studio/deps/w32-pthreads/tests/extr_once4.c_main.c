
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int pthread_t ;
struct TYPE_5__ {int threadnum; int oncenum; } ;
typedef TYPE_1__ bag_t ;
struct TYPE_7__ {int i; int cs; } ;
struct TYPE_6__ {int cs; int i; } ;


 int DeleteCriticalSection (int *) ;
 int GetCurrentProcess () ;
 int GetCurrentThread () ;
 int InitializeCriticalSection (int *) ;
 int NUM_ONCE ;
 int NUM_THREADS ;
 int REALTIME_PRIORITY_CLASS ;
 int SetPriorityClass (int ,int ) ;
 int SetThreadPriority (int ,int) ;
 int assert (int) ;
 int mythread ;
 TYPE_4__ numOnce ;
 TYPE_3__ numThreads ;
 int o ;
 int * once ;
 int print_lock ;
 int printf (char*,...) ;
 scalar_t__ pthread_create (int *,int *,int ,void*) ;
 scalar_t__ pthread_join (int ,int *) ;
 int sched_yield () ;
 TYPE_1__** threadbag ;

int
main()
{
  pthread_t t[NUM_THREADS][NUM_ONCE];
  int i, j;

  InitializeCriticalSection(&print_lock);
  InitializeCriticalSection(&numThreads.cs);
  InitializeCriticalSection(&numOnce.cs);
  SetPriorityClass(GetCurrentProcess(), REALTIME_PRIORITY_CLASS);

  SetThreadPriority(GetCurrentThread(), -2);

  for (j = 0; j < NUM_ONCE; j++)
    {
      once[j] = o;

      for (i = 0; i < NUM_THREADS; i++)
        {
   bag_t * bag = &threadbag[i][j];
   bag->threadnum = i;
   bag->oncenum = j;

          while (0 != pthread_create(&t[i][j], ((void*)0), mythread, (void *)bag))
            sched_yield();
        }
    }

  for (j = 0; j < NUM_ONCE; j++)
    for (i = 0; i < NUM_THREADS; i++)
      if (pthread_join(t[i][j], ((void*)0)) != 0)
        printf("Join failed for [thread,once] = [%d,%d]\n", i, j);






  assert(numOnce.i == NUM_ONCE * NUM_THREADS);
  assert(numThreads.i == 0);

  DeleteCriticalSection(&numOnce.cs);
  DeleteCriticalSection(&numThreads.cs);
  DeleteCriticalSection(&print_lock);

  return 0;
}
