
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_2__ {int interrupt_poll_ts; int mutex; scalar_t__ stopping; scalar_t__ kill; } ;
typedef TYPE_1__ mp_media_t ;


 int os_gettime_ns () ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

__attribute__((used)) static int interrupt_callback(void *data)
{
 mp_media_t *m = data;
 bool stop = 0;
 uint64_t ts = os_gettime_ns();

 if ((ts - m->interrupt_poll_ts) > 20000000) {
  pthread_mutex_lock(&m->mutex);
  stop = m->kill || m->stopping;
  pthread_mutex_unlock(&m->mutex);

  m->interrupt_poll_ts = ts;
 }

 return stop;
}
