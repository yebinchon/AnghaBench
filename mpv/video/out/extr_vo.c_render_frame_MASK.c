#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct vo_vsync_info {int last_queue_display_time; int skipped_vsyncs; } ;
struct vo_internal {scalar_t__ flip_queue_offset; int dropped_frame; scalar_t__ prev_vsync; int hasframe_rendered; int expecting_vsync; int drop_count; int rendering; int request_redraw; struct vo_frame* frame_queued; int /*<<< orphan*/  lock; int /*<<< orphan*/  wakeup; struct vo_frame* current_frame; scalar_t__ paused; int /*<<< orphan*/  hasframe; } ;
struct vo_frame {int num_vsyncs; scalar_t__ pts; int duration; int can_drop; int repeat; scalar_t__ display_synced; int /*<<< orphan*/  current; scalar_t__ vsync_interval; int /*<<< orphan*/  vsync_offset; } ;
struct vo {TYPE_1__* driver; struct vo_internal* in; } ;
typedef  scalar_t__ int64_t ;
struct TYPE_2__ {int caps; int /*<<< orphan*/  (* get_vsync ) (struct vo*,struct vo_vsync_info*) ;int /*<<< orphan*/  (* flip_page ) (struct vo*) ;int /*<<< orphan*/  (* draw_image ) (struct vo*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* draw_frame ) (struct vo*,struct vo_frame*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vo*,char*) ; 
 int VO_CAP_FRAMEDROP ; 
 int VO_CAP_NORETAIN ; 
 int /*<<< orphan*/  FUNC1 (struct vo_frame*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct vo*,struct vo_frame*) ; 
 int /*<<< orphan*/  FUNC8 (struct vo*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct vo*) ; 
 int /*<<< orphan*/  FUNC10 (struct vo*,struct vo_vsync_info*) ; 
 int /*<<< orphan*/  FUNC11 (struct vo_frame*) ; 
 int /*<<< orphan*/  FUNC12 (struct vo*) ; 
 int /*<<< orphan*/  FUNC13 (struct vo*,struct vo_vsync_info*) ; 
 struct vo_frame* FUNC14 (struct vo_frame*) ; 
 int /*<<< orphan*/  FUNC15 (struct vo*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (struct vo*) ; 

__attribute__((used)) static bool FUNC17(struct vo *vo)
{
    struct vo_internal *in = vo->in;
    struct vo_frame *frame = NULL;
    bool got_frame = false;

    FUNC12(vo);

    FUNC5(&in->lock);

    if (in->frame_queued) {
        FUNC11(in->current_frame);
        in->current_frame = in->frame_queued;
        in->frame_queued = NULL;
    } else if (in->paused || !in->current_frame || !in->hasframe ||
               (in->current_frame->display_synced && in->current_frame->num_vsyncs < 1) ||
               !in->current_frame->display_synced)
    {
        goto done;
    }

    frame = FUNC14(in->current_frame);
    FUNC1(frame);

    if (frame->display_synced) {
        frame->pts = 0;
        frame->duration = -1;
    }

    int64_t now = FUNC3();
    int64_t pts = frame->pts;
    int64_t duration = frame->duration;
    int64_t end_time = pts + duration;

    // Time at which we should flip_page on the VO.
    int64_t target = frame->display_synced ? 0 : pts - in->flip_queue_offset;

    // "normal" strict drop threshold.
    in->dropped_frame = duration >= 0 && end_time < now;

    in->dropped_frame &= !frame->display_synced;
    in->dropped_frame &= !(vo->driver->caps & VO_CAP_FRAMEDROP);
    in->dropped_frame &= frame->can_drop;
    // Even if we're hopelessly behind, rather degrade to 10 FPS playback,
    // instead of just freezing the display forever.
    in->dropped_frame &= now - in->prev_vsync < 100 * 1000;
    in->dropped_frame &= in->hasframe_rendered;

    // Setup parameters for the next time this frame is drawn. ("frame" is the
    // frame currently drawn, while in->current_frame is the potentially next.)
    in->current_frame->repeat = true;
    if (frame->display_synced) {
        in->current_frame->vsync_offset += in->current_frame->vsync_interval;
        in->dropped_frame |= in->current_frame->num_vsyncs < 1;
    }
    if (in->current_frame->num_vsyncs > 0)
        in->current_frame->num_vsyncs -= 1;

    bool use_vsync = in->current_frame->display_synced && !in->paused;
    if (use_vsync && !in->expecting_vsync) // first DS frame in a row
        in->prev_vsync = now;
    in->expecting_vsync = use_vsync;

    if (in->dropped_frame) {
        in->drop_count += 1;
    } else {
        in->rendering = true;
        in->hasframe_rendered = true;
        int64_t prev_drop_count = vo->in->drop_count;
        FUNC6(&in->lock);
        FUNC16(vo); // core can queue new video now

        FUNC0(vo, "start video-draw");

        if (vo->driver->draw_frame) {
            vo->driver->draw_frame(vo, frame);
        } else {
            vo->driver->draw_image(vo, FUNC2(frame->current));
        }

        FUNC0(vo, "end video-draw");

        FUNC15(vo, target);

        FUNC0(vo, "start video-flip");

        vo->driver->flip_page(vo);

        struct vo_vsync_info vsync = {
            .last_queue_display_time = -1,
            .skipped_vsyncs = -1,
        };
        if (vo->driver->get_vsync)
            vo->driver->get_vsync(vo, &vsync);

        // Make up some crap if presentation feedback is missing.
        if (vsync.last_queue_display_time < 0)
            vsync.last_queue_display_time = FUNC3();

        FUNC0(vo, "end video-flip");

        FUNC5(&in->lock);
        in->dropped_frame = prev_drop_count < vo->in->drop_count;
        in->rendering = false;

        FUNC13(vo, &vsync);
    }

    if (vo->driver->caps & VO_CAP_NORETAIN) {
        FUNC11(in->current_frame);
        in->current_frame = NULL;
    }

    if (in->dropped_frame) {
        FUNC0(vo, "drop-vo");
    } else {
        in->request_redraw = false;
    }

    FUNC4(&in->wakeup); // for vo_wait_frame()
    FUNC16(vo);

    got_frame = true;

done:
    FUNC11(frame);
    FUNC6(&in->lock);
    return got_frame || (in->frame_queued && in->frame_queued->display_synced);
}