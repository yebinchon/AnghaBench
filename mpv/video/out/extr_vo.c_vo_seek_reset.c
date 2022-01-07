
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vo_internal {int send_reset; int lock; } ;
struct vo {struct vo_internal* in; } ;


 int forget_frames (struct vo*) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int reset_vsync_timings (struct vo*) ;
 int wakeup_locked (struct vo*) ;

void vo_seek_reset(struct vo *vo)
{
    struct vo_internal *in = vo->in;
    pthread_mutex_lock(&in->lock);
    forget_frames(vo);
    reset_vsync_timings(vo);
    in->send_reset = 1;
    wakeup_locked(vo);
    pthread_mutex_unlock(&in->lock);
}
