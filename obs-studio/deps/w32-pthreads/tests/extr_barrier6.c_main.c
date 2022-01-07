
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pthread_t ;


 scalar_t__ EINVAL ;
 int NUMTHREADS ;
 int assert (int) ;
 int barrier ;
 int func ;
 int mx ;
 int otherThreadCount ;
 int printf (char*,int,int) ;
 scalar_t__ pthread_barrier_destroy (int *) ;
 scalar_t__ pthread_barrier_init (int *,int *,int) ;
 scalar_t__ pthread_create (int *,int *,int ,int *) ;
 scalar_t__ pthread_join (int ,int *) ;
 scalar_t__ pthread_mutex_destroy (int *) ;
 int serialThreadCount ;

int
main()
{
  int i, j, k;
  pthread_t t[NUMTHREADS + 1];

  for (j = 1; j <= NUMTHREADS; j++)
    {
      int howHigh = j/2 + 1;

      printf("Barrier height = %d, Total threads %d\n", howHigh, j);

      serialThreadCount = 0;
      otherThreadCount = 0;

      assert(pthread_barrier_init(&barrier, ((void*)0), howHigh) == 0);

      for (i = 1; i <= j; i++)
        {
          assert(pthread_create(&t[i], ((void*)0), func, ((void*)0)) == 0);

          if (i == howHigh)
            {
              for (k = 1; k <= howHigh; k++)
                {
                  assert(pthread_join(t[k], ((void*)0)) == 0);
                }
              assert(pthread_barrier_destroy(&barrier) == 0);
            }
        }

      for (i = howHigh+1; i <= j; i++)
        {
          assert(pthread_join(t[i], ((void*)0)) == 0);
        }

      assert(serialThreadCount == 1);
      assert(otherThreadCount == (howHigh - 1));

      assert(pthread_barrier_destroy(&barrier) == EINVAL);
    }

  assert(pthread_mutex_destroy(&mx) == 0);

  return 0;
}
