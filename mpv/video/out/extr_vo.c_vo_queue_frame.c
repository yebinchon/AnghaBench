
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vo_internal {int hasframe; int lock; scalar_t__ wakeup_pts; struct vo_frame* frame_queued; scalar_t__ current_frame_id; TYPE_1__* current_frame; } ;
struct vo_frame {int duration; scalar_t__ pts; scalar_t__ display_synced; scalar_t__ frame_id; } ;
struct vo {scalar_t__ config_ok; struct vo_internal* in; } ;
struct TYPE_2__ {int num_vsyncs; } ;


 scalar_t__ MPMAX (int ,int ) ;
 int assert (int) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int wakeup_locked (struct vo*) ;

void vo_queue_frame(struct vo *vo, struct vo_frame *frame)
{
    struct vo_internal *in = vo->in;
    pthread_mutex_lock(&in->lock);
    assert(vo->config_ok && !in->frame_queued &&
           (!in->current_frame || in->current_frame->num_vsyncs < 1));
    in->hasframe = 1;
    frame->frame_id = ++(in->current_frame_id);
    in->frame_queued = frame;
    in->wakeup_pts = frame->display_synced
                   ? 0 : frame->pts + MPMAX(frame->duration, 0);
    wakeup_locked(vo);
    pthread_mutex_unlock(&in->lock);
}
