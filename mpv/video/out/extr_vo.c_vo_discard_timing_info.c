
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vo_internal {int lock; } ;
struct vo {struct vo_internal* in; } ;


 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int reset_vsync_timings (struct vo*) ;

void vo_discard_timing_info(struct vo *vo)
{
    struct vo_internal *in = vo->in;
    pthread_mutex_lock(&in->lock);
    reset_vsync_timings(vo);
    pthread_mutex_unlock(&in->lock);
}
