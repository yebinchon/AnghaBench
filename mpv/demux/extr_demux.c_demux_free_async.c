
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct demuxer {struct demux_internal* in; } ;
struct demux_internal {int thread_terminate; int shutdown_async; int lock; int wakeup; int threading; struct demuxer* d_user; } ;
struct demux_free_async_state {int dummy; } ;


 int assert (int) ;
 int pthread_cond_signal (int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

struct demux_free_async_state *demux_free_async(struct demuxer *demuxer)
{
    struct demux_internal *in = demuxer->in;
    assert(demuxer == in->d_user);

    if (!in->threading)
        return ((void*)0);

    pthread_mutex_lock(&in->lock);
    in->thread_terminate = 1;
    in->shutdown_async = 1;
    pthread_cond_signal(&in->wakeup);
    pthread_mutex_unlock(&in->lock);

    return (struct demux_free_async_state *)demuxer->in;
}
