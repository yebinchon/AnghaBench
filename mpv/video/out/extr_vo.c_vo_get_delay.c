
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vo_internal {int base_vsync; int vsync_interval; int lock; TYPE_1__* current_frame; int rendering; int frame_queued; } ;
struct vo {struct vo_internal* in; } ;
typedef int int64_t ;
struct TYPE_2__ {int num_vsyncs; int display_synced; } ;


 int assert (int) ;
 int mp_time_us () ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

double vo_get_delay(struct vo *vo)
{
    struct vo_internal *in = vo->in;
    pthread_mutex_lock(&in->lock);
    assert (!in->frame_queued);
    int64_t res = 0;
    if (in->base_vsync && in->vsync_interval > 1 && in->current_frame) {
        res = in->base_vsync;
        int extra = !!in->rendering;
        res += (in->current_frame->num_vsyncs + extra) * in->vsync_interval;
        if (!in->current_frame->display_synced)
            res = 0;
    }
    pthread_mutex_unlock(&in->lock);
    return res ? (res - mp_time_us()) / 1e6 : 0;
}
