
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vo_internal {int queued_events; int lock; int wakeup; } ;
struct vo {struct vo_internal* in; } ;
struct timespec {int dummy; } ;
typedef scalar_t__ int64_t ;


 int VO_EVENT_LIVE_RESIZING ;
 scalar_t__ mp_time_us () ;
 struct timespec mp_time_us_to_timespec (scalar_t__) ;
 scalar_t__ pthread_cond_timedwait (int *,int *,struct timespec*) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

__attribute__((used)) static void wait_until(struct vo *vo, int64_t target)
{
    struct vo_internal *in = vo->in;
    struct timespec ts = mp_time_us_to_timespec(target);
    pthread_mutex_lock(&in->lock);
    while (target > mp_time_us()) {
        if (in->queued_events & VO_EVENT_LIVE_RESIZING)
            break;
        if (pthread_cond_timedwait(&in->wakeup, &in->lock, &ts))
            break;
    }
    pthread_mutex_unlock(&in->lock);
}
