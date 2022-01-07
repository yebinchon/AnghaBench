
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mutex_ended; int mutex_end; int mutex_start; int mutex_started; } ;


 int assert (int) ;
 int nthreads ;
 scalar_t__ pthread_mutex_lock (int *) ;
 scalar_t__ pthread_mutex_unlock (int *) ;
 TYPE_1__* tcs ;

__attribute__((used)) static void
dosync (void)
{
  int i;

  for (i = 0; i < nthreads; ++i)
    {
      assert(pthread_mutex_lock (&tcs[i].mutex_end) == 0);
      assert(pthread_mutex_unlock (&tcs[i].mutex_start) == 0);
      assert(pthread_mutex_lock (&tcs[i].mutex_started) == 0);
      assert(pthread_mutex_unlock (&tcs[i].mutex_started) == 0);
    }




  for (i = 0; i < nthreads; ++i)
    {
      assert(pthread_mutex_lock (&tcs[i].mutex_start) == 0);
      assert(pthread_mutex_unlock (&tcs[i].mutex_end) == 0);
      assert(pthread_mutex_lock (&tcs[i].mutex_ended) == 0);
      assert(pthread_mutex_unlock (&tcs[i].mutex_ended) == 0);
    }
}
