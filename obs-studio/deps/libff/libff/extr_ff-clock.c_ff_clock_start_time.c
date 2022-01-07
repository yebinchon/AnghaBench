
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ff_clock {int mutex; int start_time; scalar_t__ started; } ;
typedef int int64_t ;


 int AV_NOPTS_VALUE ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

int64_t ff_clock_start_time(struct ff_clock *clock)
{
 int64_t start_time = AV_NOPTS_VALUE;

 pthread_mutex_lock(&clock->mutex);
 if (clock->started)
  start_time = clock->start_time;
 pthread_mutex_unlock(&clock->mutex);

 return start_time;
}
