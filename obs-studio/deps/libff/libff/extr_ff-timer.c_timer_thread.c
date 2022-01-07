
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
struct timespec {int tv_sec; int tv_nsec; } ;
struct ff_timer {scalar_t__ next_wake; int needs_wake; int opaque; int (* callback ) (int ) ;int mutex; int cond; scalar_t__ abort; } ;


 int AV_TIME_BASE ;
 int ETIMEDOUT ;
 scalar_t__ av_gettime () ;
 int av_usleep (int) ;
 int pthread_cond_timedwait (int *,int *,struct timespec*) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int stub1 (int ) ;

__attribute__((used)) static void *timer_thread(void *opaque)
{
 struct ff_timer *timer = (struct ff_timer *)opaque;
 int ret;

 while (1) {
  bool callback = 0;
  pthread_mutex_lock(&timer->mutex);

  if (timer->abort) {
   pthread_mutex_unlock(&timer->mutex);
   break;
  }

  uint64_t current_time = av_gettime();
  if (current_time < timer->next_wake) {
   struct timespec sleep_time = {
           .tv_sec = timer->next_wake / AV_TIME_BASE,
           .tv_nsec = (timer->next_wake % AV_TIME_BASE) *
                      1000};

   ret = pthread_cond_timedwait(
           &timer->cond, &timer->mutex, &sleep_time);
   if (ret != ETIMEDOUT) {

    av_usleep((unsigned)(timer->next_wake -
                         current_time));
   }

   pthread_mutex_unlock(&timer->mutex);
   continue;



  } else {

   av_usleep(1000);
  }


  current_time = av_gettime();
  if (timer->next_wake <= current_time || timer->needs_wake) {
   callback = 1;
   timer->needs_wake = 0;
  }

  pthread_mutex_unlock(&timer->mutex);

  if (callback)
   timer->callback(timer->opaque);
 }

 return ((void*)0);
}
