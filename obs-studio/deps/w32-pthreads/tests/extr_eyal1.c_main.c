
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int id; int work; int stat; int mutex_ended; int mutex_end; int mutex_started; int mutex_start; int thread; } ;
typedef TYPE_1__ TC ;


 int EBUSY ;
 int assert (int) ;
 scalar_t__ calloc (int,int) ;
 int die (int ) ;
 int dosync () ;
 int dowork () ;
 int mutex_stdout ;
 int mutex_todo ;
 int nthreads ;
 scalar_t__ print_server ;
 int printf (char*,...) ;
 int pthread_create (int *,int *,void* (*) (void*),void*) ;
 scalar_t__ pthread_join (int ,int *) ;
 scalar_t__ pthread_mutex_destroy (int *) ;
 scalar_t__ pthread_mutex_init (int *,int *) ;
 scalar_t__ pthread_mutex_lock (int *) ;
 int pthread_mutex_trylock (int *) ;
 scalar_t__ pthread_mutex_unlock (int *) ;
 TYPE_1__* tcs ;
 int todo ;

int
main (int argc, char *argv[])
{
  int i;

  assert(((void*)0) != (tcs = (TC *) calloc (nthreads, sizeof (*tcs))));




  for (i = 0; i < nthreads; ++i)
    {
      tcs[i].id = i;

      assert(pthread_mutex_init (&tcs[i].mutex_start, ((void*)0)) == 0);
      assert(pthread_mutex_init (&tcs[i].mutex_started, ((void*)0)) == 0);
      assert(pthread_mutex_init (&tcs[i].mutex_end, ((void*)0)) == 0);
      assert(pthread_mutex_init (&tcs[i].mutex_ended, ((void*)0)) == 0);

      tcs[i].work = 0;

      assert(pthread_mutex_lock (&tcs[i].mutex_start) == 0);
      assert((tcs[i].stat =
       pthread_create (&tcs[i].thread,
         ((void*)0),
                  (void *(*)(void *))print_server,
                (void *) &tcs[i])
       ) == 0);




      {
 int trylock = 0;

 while (trylock == 0)
   {
     trylock = pthread_mutex_trylock(&tcs[i].mutex_started);
     assert(trylock == 0 || trylock == EBUSY);

     if (trylock == 0)
       {
  assert(pthread_mutex_unlock (&tcs[i].mutex_started) == 0);
       }
   }
      }
    }

  dowork ();




  todo = -2;
  dosync();

  for (i = 0; i < nthreads; ++i)
    {
      if (0 == tcs[i].stat)
 assert(pthread_join (tcs[i].thread, ((void*)0)) == 0);
    }




  assert(pthread_mutex_destroy (&mutex_stdout) == 0);
  assert(pthread_mutex_destroy (&mutex_todo) == 0);




  printf ("\n");




  for (i = 0; i < nthreads; ++i)
    {
      printf ("%2d ", i);
      if (0 == tcs[i].stat)
 printf ("%10ld\n", tcs[i].work);
      else
 printf ("failed %d\n", tcs[i].stat);

      assert(pthread_mutex_unlock(&tcs[i].mutex_start) == 0);

      assert(pthread_mutex_destroy (&tcs[i].mutex_start) == 0);
      assert(pthread_mutex_destroy (&tcs[i].mutex_started) == 0);
      assert(pthread_mutex_destroy (&tcs[i].mutex_end) == 0);
      assert(pthread_mutex_destroy (&tcs[i].mutex_ended) == 0);
    }

  die (0);

  return (0);
}
