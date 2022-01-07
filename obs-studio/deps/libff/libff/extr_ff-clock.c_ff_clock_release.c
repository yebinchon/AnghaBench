
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ff_clock {int mutex; int cond; int retain; } ;


 int av_free (struct ff_clock*) ;
 scalar_t__ ff_atomic_dec_long (int *) ;
 int pthread_cond_destroy (int *) ;
 int pthread_mutex_destroy (int *) ;

void ff_clock_release(struct ff_clock **clock)
{
 if (ff_atomic_dec_long(&(*clock)->retain) == 0) {
  pthread_cond_destroy(&(*clock)->cond);
  pthread_mutex_destroy(&(*clock)->mutex);
  av_free(*clock);
 }

 *clock = ((void*)0);
}
