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
struct vo_internal {int hasframe; int /*<<< orphan*/  lock; scalar_t__ wakeup_pts; struct vo_frame* frame_queued; scalar_t__ current_frame_id; TYPE_1__* current_frame; } ;
struct vo_frame {int /*<<< orphan*/  duration; scalar_t__ pts; scalar_t__ display_synced; scalar_t__ frame_id; } ;
struct vo {scalar_t__ config_ok; struct vo_internal* in; } ;
struct TYPE_2__ {int num_vsyncs; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct vo*) ; 

void FUNC5(struct vo *vo, struct vo_frame *frame)
{
    struct vo_internal *in = vo->in;
    FUNC2(&in->lock);
    FUNC1(vo->config_ok && !in->frame_queued &&
           (!in->current_frame || in->current_frame->num_vsyncs < 1));
    in->hasframe = true;
    frame->frame_id = ++(in->current_frame_id);
    in->frame_queued = frame;
    in->wakeup_pts = frame->display_synced
                   ? 0 : frame->pts + FUNC0(frame->duration, 0);
    FUNC4(vo);
    FUNC3(&in->lock);
}