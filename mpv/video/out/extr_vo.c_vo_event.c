
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vo_internal {int queued_events; int internal_events; int lock; } ;
struct vo {struct vo_internal* in; } ;


 int VO_EVENTS_USER ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int wakeup_core (struct vo*) ;
 int wakeup_locked (struct vo*) ;

void vo_event(struct vo *vo, int event)
{
    struct vo_internal *in = vo->in;
    pthread_mutex_lock(&in->lock);
    if ((in->queued_events & event & VO_EVENTS_USER) != (event & VO_EVENTS_USER))
        wakeup_core(vo);
    if (event)
        wakeup_locked(vo);
    in->queued_events |= event;
    in->internal_events |= event;
    pthread_mutex_unlock(&in->lock);
}
