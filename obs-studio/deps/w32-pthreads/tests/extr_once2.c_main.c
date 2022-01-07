
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int pthread_t ;
struct TYPE_4__ {int i; int cs; } ;
struct TYPE_3__ {int i; int cs; } ;


 int DeleteCriticalSection (int *) ;
 int InitializeCriticalSection (int *) ;
 int NUM_ONCE ;
 int NUM_THREADS ;
 int assert (int) ;
 int mythread ;
 TYPE_2__ numOnce ;
 TYPE_1__ numThreads ;
 int o ;
 int * once ;
 int printf (char*,int,int) ;
 scalar_t__ pthread_create (int *,int *,int ,void*) ;
 scalar_t__ pthread_join (int ,int *) ;
 int sched_yield () ;

int
main()
{
  pthread_t t[NUM_THREADS][NUM_ONCE];
  int i, j;

  InitializeCriticalSection(&numThreads.cs);
  InitializeCriticalSection(&numOnce.cs);

  for (j = 0; j < NUM_ONCE; j++)
    {
      once[j] = o;

      for (i = 0; i < NUM_THREADS; i++)
        {

          while (0 != pthread_create(&t[i][j], ((void*)0), mythread, (void *)(size_t)j))
     sched_yield();
        }
    }

  for (j = 0; j < NUM_ONCE; j++)
    for (i = 0; i < NUM_THREADS; i++)
      if (pthread_join(t[i][j], ((void*)0)) != 0)
        printf("Join failed for [thread,once] = [%d,%d]\n", i, j);

  assert(numOnce.i == NUM_ONCE);
  assert(numThreads.i == NUM_THREADS * NUM_ONCE);

  DeleteCriticalSection(&numOnce.cs);
  DeleteCriticalSection(&numThreads.cs);

  return 0;
}
