
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct timeval {int tv_usec; int tv_sec; } ;
struct timespec {int tv_nsec; int tv_sec; } ;
struct TYPE_3__ {int signalled; int mutex; int manual; int cond; } ;
typedef TYPE_1__ os_event_t ;


 int CLOCK_REALTIME ;
 int add_ms_to_ts (struct timespec*,unsigned long) ;
 int clock_gettime (int ,struct timespec*) ;
 int gettimeofday (struct timeval*,int *) ;
 int pthread_cond_timedwait (int *,int *,struct timespec*) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

int os_event_timedwait(os_event_t *event, unsigned long milliseconds)
{
 int code = 0;
 pthread_mutex_lock(&event->mutex);
 if (!event->signalled) {
  struct timespec ts;






  clock_gettime(CLOCK_REALTIME, &ts);

  add_ms_to_ts(&ts, milliseconds);
  code = pthread_cond_timedwait(&event->cond, &event->mutex, &ts);
 }

 if (code == 0) {
  if (!event->manual)
   event->signalled = 0;
 }

 pthread_mutex_unlock(&event->mutex);

 return code;
}
