
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
struct ff_timer {int needs_wake; scalar_t__ next_wake; int mutex; int cond; } ;


 scalar_t__ av_gettime () ;
 int pthread_cond_signal (int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

void ff_timer_schedule(struct ff_timer *timer, uint64_t microseconds)
{
 uint64_t cur_time = av_gettime();
 uint64_t new_wake_time = cur_time + microseconds;

 pthread_mutex_lock(&timer->mutex);

 timer->needs_wake = 1;
 if (new_wake_time < timer->next_wake || cur_time > timer->next_wake)
  timer->next_wake = new_wake_time;

 pthread_cond_signal(&timer->cond);

 pthread_mutex_unlock(&timer->mutex);
}
