
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pthread_t ;
typedef int LONG ;


 int BARRIERMULTIPLE ;
 int HEIGHT ;
 int NUMTHREADS ;
 int assert (int) ;
 int barrier ;
 int func ;
 int mx ;
 int printf (char*,int,int) ;
 scalar_t__ pthread_barrier_destroy (int *) ;
 scalar_t__ pthread_barrier_init (int *,int *,int) ;
 scalar_t__ pthread_create (int *,int *,int ,void*) ;
 scalar_t__ pthread_join (int ,void**) ;
 scalar_t__ pthread_mutex_destroy (int *) ;
 scalar_t__ totalThreadCrossings ;

int
main()
{
  int i, j;
  void* result;
  int serialThreadsTotal;
  LONG Crossings;
  pthread_t t[NUMTHREADS + 1];

  for (j = 1; j <= NUMTHREADS; j++)
    {
      int height = j<HEIGHT?j:HEIGHT;

      totalThreadCrossings = 0;
      Crossings = height * BARRIERMULTIPLE;

      printf("Threads=%d, Barrier height=%d\n", j, height);

      assert(pthread_barrier_init(&barrier, ((void*)0), height) == 0);

      for (i = 1; i <= j; i++)
        {
          assert(pthread_create(&t[i], ((void*)0), func, (void *)(size_t)Crossings) == 0);
        }

      serialThreadsTotal = 0;
      for (i = 1; i <= j; i++)
        {
          assert(pthread_join(t[i], &result) == 0);
          serialThreadsTotal += (int)(size_t)result;
        }

      assert(serialThreadsTotal == BARRIERMULTIPLE);

      assert(pthread_barrier_destroy(&barrier) == 0);
    }

  assert(pthread_mutex_destroy(&mx) == 0);

  return 0;
}
