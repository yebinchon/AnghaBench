
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pthread_t ;


 int NUM_THREADS ;
 int* accesscount ;
 int assert (int) ;
 int destroy_key ;
 int fflush (int ) ;
 int fprintf (int ,char*,int,int,int) ;
 int key ;
 int mythread ;
 scalar_t__ pthread_barrier_destroy (int *) ;
 scalar_t__ pthread_barrier_init (int *,int *,int) ;
 int pthread_barrier_wait (int *) ;
 scalar_t__ pthread_create (int *,int *,int ,void*) ;
 scalar_t__ pthread_join (int ,int *) ;
 scalar_t__ pthread_key_create (int *,int ) ;
 scalar_t__ pthread_key_delete (int ) ;
 int setkey (void*) ;
 int startBarrier ;
 int stderr ;
 int* thread_destroyed ;
 int* thread_set ;

int
main()
{
  int i;
  int fail = 0;
  pthread_t thread[NUM_THREADS];

  assert(pthread_barrier_init(&startBarrier, ((void*)0), NUM_THREADS/2) == 0);

  for (i = 1; i < NUM_THREADS/2; i++)
    {
      accesscount[i] = thread_set[i] = thread_destroyed[i] = 0;
      assert(pthread_create(&thread[i], ((void*)0), mythread, (void *)&accesscount[i]) == 0);
    }





  assert(pthread_key_create(&key, destroy_key) == 0);

  (void) pthread_barrier_wait(&startBarrier);




  accesscount[0] = 0;
  setkey((void *) &accesscount[0]);





  for (i = NUM_THREADS/2; i < NUM_THREADS; i++)
    {
      accesscount[i] = thread_set[i] = thread_destroyed[i] = 0;
      assert(pthread_create(&thread[i], ((void*)0), mythread, (void *)&accesscount[i]) == 0);
    }




  for (i = 1; i < NUM_THREADS; i++)
    {
 assert(pthread_join(thread[i], ((void*)0)) == 0);
    }

  assert(pthread_key_delete(key) == 0);

  assert(pthread_barrier_destroy(&startBarrier) == 0);

  for (i = 1; i < NUM_THREADS; i++)
    {







 if (accesscount[i] != 2)
   {
     fail++;
     fprintf(stderr, "Thread %d key, set = %d, destroyed = %d\n",
   i, thread_set[i], thread_destroyed[i]);
   }
    }

  fflush(stderr);

  return (fail);
}
