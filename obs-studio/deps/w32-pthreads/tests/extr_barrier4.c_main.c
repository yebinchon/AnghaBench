
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pthread_t ;


 int NUMTHREADS ;
 int assert (int) ;
 int barrier ;
 int func ;
 int mx ;
 int printf (char*,int) ;
 scalar_t__ pthread_barrier_destroy (int *) ;
 scalar_t__ pthread_barrier_init (int *,int *,int) ;
 scalar_t__ pthread_create (int *,int *,int ,int *) ;
 scalar_t__ pthread_join (int ,int *) ;
 scalar_t__ pthread_mutex_destroy (int *) ;
 int serialThreadCount ;

int
main()
{
  int i, j;
  pthread_t t[NUMTHREADS + 1];

  for (j = 1; j <= NUMTHREADS; j++)
    {
      printf("Barrier height = %d\n", j);

      serialThreadCount = 0;

      assert(pthread_barrier_init(&barrier, ((void*)0), j) == 0);

      for (i = 1; i <= j; i++)
        {
          assert(pthread_create(&t[i], ((void*)0), func, ((void*)0)) == 0);
        }

      for (i = 1; i <= j; i++)
        {
          assert(pthread_join(t[i], ((void*)0)) == 0);
        }

      assert(serialThreadCount == 1);

      assert(pthread_barrier_destroy(&barrier) == 0);
    }

  assert(pthread_mutex_destroy(&mx) == 0);

  return 0;
}
