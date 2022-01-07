
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NUM_CV ;
 int RAND_MAX ;
 int assert (int) ;
 int ** cv ;
 scalar_t__ pthread_cond_destroy (int **) ;
 scalar_t__ pthread_cond_init (int **,int *) ;
 void* pthread_timechange_handler_np (int *) ;
 int rand () ;
 int srand (unsigned int) ;
 scalar_t__ time (int *) ;

int
main()
{
  int i, j;

  for (i = 0; i < NUM_CV; i++)
    {

      assert(pthread_timechange_handler_np(((void*)0)) == (void *) 0);
      assert(pthread_cond_init(&cv[i], ((void*)0)) == 0);
    }

  j = NUM_CV;
  (void) srand((unsigned)time(((void*)0)));

  do
    {
      i = (NUM_CV - 1) * rand() / RAND_MAX;
      if (cv[i] != ((void*)0))
        {
          j--;
          assert(pthread_cond_destroy(&cv[i]) == 0);

          assert(pthread_timechange_handler_np(((void*)0)) == (void *) 0);
        }
    }
  while (j > 0);

  return 0;
}
