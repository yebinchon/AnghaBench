
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vo_internal {int request_redraw; int want_redraw; int lock; } ;
struct vo {struct vo_internal* in; } ;


 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int wakeup_locked (struct vo*) ;

void vo_redraw(struct vo *vo)
{
    struct vo_internal *in = vo->in;
    pthread_mutex_lock(&in->lock);
    if (!in->request_redraw) {
        in->request_redraw = 1;
        in->want_redraw = 0;
        wakeup_locked(vo);
    }
    pthread_mutex_unlock(&in->lock);
}
