
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int dummy; } ;
struct mpv_handle {int need_wakeup; int lock; int wakeup_lock; int wakeup; } ;
typedef int int64_t ;


 struct timespec mp_time_us_to_timespec (int ) ;
 int pthread_cond_timedwait (int *,int *,struct timespec*) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

__attribute__((used)) static int wait_wakeup(struct mpv_handle *ctx, int64_t end)
{
    int r = 0;
    pthread_mutex_unlock(&ctx->lock);
    pthread_mutex_lock(&ctx->wakeup_lock);
    if (!ctx->need_wakeup) {
        struct timespec ts = mp_time_us_to_timespec(end);
        r = pthread_cond_timedwait(&ctx->wakeup, &ctx->wakeup_lock, &ts);
    }
    if (r == 0)
        ctx->need_wakeup = 0;
    pthread_mutex_unlock(&ctx->wakeup_lock);
    pthread_mutex_lock(&ctx->lock);
    return r;
}
