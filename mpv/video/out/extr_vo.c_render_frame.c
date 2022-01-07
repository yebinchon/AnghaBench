
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vo_vsync_info {int last_queue_display_time; int skipped_vsyncs; } ;
struct vo_internal {scalar_t__ flip_queue_offset; int dropped_frame; scalar_t__ prev_vsync; int hasframe_rendered; int expecting_vsync; int drop_count; int rendering; int request_redraw; struct vo_frame* frame_queued; int lock; int wakeup; struct vo_frame* current_frame; scalar_t__ paused; int hasframe; } ;
struct vo_frame {int num_vsyncs; scalar_t__ pts; int duration; int can_drop; int repeat; scalar_t__ display_synced; int current; scalar_t__ vsync_interval; int vsync_offset; } ;
struct vo {TYPE_1__* driver; struct vo_internal* in; } ;
typedef scalar_t__ int64_t ;
struct TYPE_2__ {int caps; int (* get_vsync ) (struct vo*,struct vo_vsync_info*) ;int (* flip_page ) (struct vo*) ;int (* draw_image ) (struct vo*,int ) ;int (* draw_frame ) (struct vo*,struct vo_frame*) ;} ;


 int MP_STATS (struct vo*,char*) ;
 int VO_CAP_FRAMEDROP ;
 int VO_CAP_NORETAIN ;
 int assert (struct vo_frame*) ;
 int mp_image_new_ref (int ) ;
 scalar_t__ mp_time_us () ;
 int pthread_cond_broadcast (int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int stub1 (struct vo*,struct vo_frame*) ;
 int stub2 (struct vo*,int ) ;
 int stub3 (struct vo*) ;
 int stub4 (struct vo*,struct vo_vsync_info*) ;
 int talloc_free (struct vo_frame*) ;
 int update_display_fps (struct vo*) ;
 int update_vsync_timing_after_swap (struct vo*,struct vo_vsync_info*) ;
 struct vo_frame* vo_frame_ref (struct vo_frame*) ;
 int wait_until (struct vo*,scalar_t__) ;
 int wakeup_core (struct vo*) ;

__attribute__((used)) static bool render_frame(struct vo *vo)
{
    struct vo_internal *in = vo->in;
    struct vo_frame *frame = ((void*)0);
    bool got_frame = 0;

    update_display_fps(vo);

    pthread_mutex_lock(&in->lock);

    if (in->frame_queued) {
        talloc_free(in->current_frame);
        in->current_frame = in->frame_queued;
        in->frame_queued = ((void*)0);
    } else if (in->paused || !in->current_frame || !in->hasframe ||
               (in->current_frame->display_synced && in->current_frame->num_vsyncs < 1) ||
               !in->current_frame->display_synced)
    {
        goto done;
    }

    frame = vo_frame_ref(in->current_frame);
    assert(frame);

    if (frame->display_synced) {
        frame->pts = 0;
        frame->duration = -1;
    }

    int64_t now = mp_time_us();
    int64_t pts = frame->pts;
    int64_t duration = frame->duration;
    int64_t end_time = pts + duration;


    int64_t target = frame->display_synced ? 0 : pts - in->flip_queue_offset;


    in->dropped_frame = duration >= 0 && end_time < now;

    in->dropped_frame &= !frame->display_synced;
    in->dropped_frame &= !(vo->driver->caps & VO_CAP_FRAMEDROP);
    in->dropped_frame &= frame->can_drop;


    in->dropped_frame &= now - in->prev_vsync < 100 * 1000;
    in->dropped_frame &= in->hasframe_rendered;



    in->current_frame->repeat = 1;
    if (frame->display_synced) {
        in->current_frame->vsync_offset += in->current_frame->vsync_interval;
        in->dropped_frame |= in->current_frame->num_vsyncs < 1;
    }
    if (in->current_frame->num_vsyncs > 0)
        in->current_frame->num_vsyncs -= 1;

    bool use_vsync = in->current_frame->display_synced && !in->paused;
    if (use_vsync && !in->expecting_vsync)
        in->prev_vsync = now;
    in->expecting_vsync = use_vsync;

    if (in->dropped_frame) {
        in->drop_count += 1;
    } else {
        in->rendering = 1;
        in->hasframe_rendered = 1;
        int64_t prev_drop_count = vo->in->drop_count;
        pthread_mutex_unlock(&in->lock);
        wakeup_core(vo);

        MP_STATS(vo, "start video-draw");

        if (vo->driver->draw_frame) {
            vo->driver->draw_frame(vo, frame);
        } else {
            vo->driver->draw_image(vo, mp_image_new_ref(frame->current));
        }

        MP_STATS(vo, "end video-draw");

        wait_until(vo, target);

        MP_STATS(vo, "start video-flip");

        vo->driver->flip_page(vo);

        struct vo_vsync_info vsync = {
            .last_queue_display_time = -1,
            .skipped_vsyncs = -1,
        };
        if (vo->driver->get_vsync)
            vo->driver->get_vsync(vo, &vsync);


        if (vsync.last_queue_display_time < 0)
            vsync.last_queue_display_time = mp_time_us();

        MP_STATS(vo, "end video-flip");

        pthread_mutex_lock(&in->lock);
        in->dropped_frame = prev_drop_count < vo->in->drop_count;
        in->rendering = 0;

        update_vsync_timing_after_swap(vo, &vsync);
    }

    if (vo->driver->caps & VO_CAP_NORETAIN) {
        talloc_free(in->current_frame);
        in->current_frame = ((void*)0);
    }

    if (in->dropped_frame) {
        MP_STATS(vo, "drop-vo");
    } else {
        in->request_redraw = 0;
    }

    pthread_cond_broadcast(&in->wakeup);
    wakeup_core(vo);

    got_frame = 1;

done:
    talloc_free(frame);
    pthread_mutex_unlock(&in->lock);
    return got_frame || (in->frame_queued && in->frame_queued->display_synced);
}
