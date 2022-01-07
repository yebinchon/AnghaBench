
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vo_internal {int lock; int wakeup; int need_wakeup; } ;
struct vo {struct vo_internal* in; } ;
struct timespec {int dummy; } ;
typedef int int64_t ;


 struct timespec mp_time_us_to_timespec (int ) ;
 int pthread_cond_timedwait (int *,int *,struct timespec*) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

void vo_wait_default(struct vo *vo, int64_t until_time)
{
    struct vo_internal *in = vo->in;

    pthread_mutex_lock(&in->lock);
    if (!in->need_wakeup) {
        struct timespec ts = mp_time_us_to_timespec(until_time);
        pthread_cond_timedwait(&in->wakeup, &in->lock, &ts);
    }
    pthread_mutex_unlock(&in->lock);
}
