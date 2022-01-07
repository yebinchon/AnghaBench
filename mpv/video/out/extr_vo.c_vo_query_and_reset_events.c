
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vo_internal {int queued_events; int lock; } ;
struct vo {struct vo_internal* in; } ;


 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

int vo_query_and_reset_events(struct vo *vo, int events)
{
    struct vo_internal *in = vo->in;
    pthread_mutex_lock(&in->lock);
    int r = in->queued_events & events;
    in->queued_events &= ~(unsigned)r;
    pthread_mutex_unlock(&in->lock);
    return r;
}
