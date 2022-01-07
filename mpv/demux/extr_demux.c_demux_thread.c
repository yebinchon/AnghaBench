
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int dummy; } ;
struct demux_internal {int shutdown_async; int lock; int wakeup_cb_ctx; int (* wakeup_cb ) (int ) ;int wakeup; int next_cache_update; int thread_terminate; } ;


 int demux_shutdown (struct demux_internal*) ;
 struct timespec mp_time_us_to_timespec (int ) ;
 int mpthread_set_name (char*) ;
 int pthread_cond_signal (int *) ;
 int pthread_cond_timedwait (int *,int *,struct timespec*) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int stub1 (int ) ;
 scalar_t__ thread_work (struct demux_internal*) ;

__attribute__((used)) static void *demux_thread(void *pctx)
{
    struct demux_internal *in = pctx;
    mpthread_set_name("demux");
    pthread_mutex_lock(&in->lock);

    while (!in->thread_terminate) {
        if (thread_work(in))
            continue;
        pthread_cond_signal(&in->wakeup);
        struct timespec until = mp_time_us_to_timespec(in->next_cache_update);
        pthread_cond_timedwait(&in->wakeup, &in->lock, &until);
    }

    if (in->shutdown_async) {
        pthread_mutex_unlock(&in->lock);
        demux_shutdown(in);
        pthread_mutex_lock(&in->lock);
        in->shutdown_async = 0;
        if (in->wakeup_cb)
            in->wakeup_cb(in->wakeup_cb_ctx);
    }

    pthread_mutex_unlock(&in->lock);
    return ((void*)0);
}
