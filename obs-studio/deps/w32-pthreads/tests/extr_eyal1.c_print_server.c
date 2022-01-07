
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int work; int mutex_started; int mutex_ended; int mutex_end; int id; int mutex_start; } ;
typedef TYPE_1__ TC ;


 int assert (int) ;
 int do_work_unit (int ,int) ;
 int mutex_todo ;
 int nwork ;
 scalar_t__ pthread_mutex_lock (int *) ;
 scalar_t__ pthread_mutex_unlock (int *) ;
 int todo ;

__attribute__((used)) static int
print_server (void *ptr)
{
  int mywork;
  int n;
  TC *tc = (TC *)ptr;

  assert(pthread_mutex_lock (&tc->mutex_started) == 0);

  for (;;)
    {
      assert(pthread_mutex_lock (&tc->mutex_start) == 0);
      assert(pthread_mutex_unlock (&tc->mutex_start) == 0);
      assert(pthread_mutex_lock (&tc->mutex_ended) == 0);
      assert(pthread_mutex_unlock (&tc->mutex_started) == 0);

      for (;;)
 {




   assert(pthread_mutex_lock (&mutex_todo) == 0);

   mywork = todo;
   if (todo >= 0)
     {
       ++todo;
       if (todo >= nwork)
  todo = -1;
     }
   assert(pthread_mutex_unlock (&mutex_todo) == 0);

   if (mywork < 0)
     break;

   assert((n = do_work_unit (tc->id, mywork)) >= 0);
   tc->work += n;
 }

      assert(pthread_mutex_lock (&tc->mutex_end) == 0);
      assert(pthread_mutex_unlock (&tc->mutex_end) == 0);
      assert(pthread_mutex_lock (&tc->mutex_started) == 0);
      assert(pthread_mutex_unlock (&tc->mutex_ended) == 0);

      if (-2 == mywork)
 break;
    }

  assert(pthread_mutex_unlock (&tc->mutex_started) == 0);

  return (0);
}
