
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pthread_t ;


 int NUM_CV ;
 int NUM_LOOPS ;
 int RAND_MAX ;
 int assert (int) ;
 int ** cv ;
 scalar_t__ pthread_cond_destroy (int **) ;
 scalar_t__ pthread_cond_init (int **,int *) ;
 scalar_t__ pthread_create (int *,int *,int ,int *) ;
 scalar_t__ pthread_join (int ,void**) ;
 int pthread_timechange_handler_np ;
 int rand () ;
 int srand (unsigned int) ;
 scalar_t__ time (int *) ;

int
main()
{
  int i, j, k;
  void* result = (void*)-1;
  pthread_t t;

  for (k = 0; k < NUM_LOOPS; k++)
    {
      for (i = 0; i < NUM_CV; i++)
        {
          assert(pthread_cond_init(&cv[i], ((void*)0)) == 0);
        }

      j = NUM_CV;
      (void) srand((unsigned)time(((void*)0)));


      assert(pthread_create(&t, ((void*)0), pthread_timechange_handler_np, ((void*)0)) == 0);

      do
        {
          i = (NUM_CV - 1) * rand() / RAND_MAX;
          if (cv[i] != ((void*)0))
            {
              j--;
              assert(pthread_cond_destroy(&cv[i]) == 0);
            }
        }
      while (j > 0);

      assert(pthread_join(t, &result) == 0);
      assert ((int)(size_t)result == 0);
    }

  return 0;
}
