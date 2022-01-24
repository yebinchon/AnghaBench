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
struct vo_frame {int dummy; } ;
struct MPContext {int num_past_frames; int display_sync_active; double speed_factor_a; double speed_factor_v; int time_frame; int video_speed; TYPE_1__* past_frames; } ;
struct TYPE_2__ {scalar_t__ num_vsyncs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct MPContext*,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct MPContext*,struct vo_frame*) ; 
 int /*<<< orphan*/  FUNC2 (struct MPContext*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct MPContext*) ; 

__attribute__((used)) static void FUNC4(struct MPContext *mpctx, struct vo_frame *frame)
{
    FUNC1(mpctx, frame);

    if (mpctx->num_past_frames > 1 &&
        ((mpctx->past_frames[1].num_vsyncs >= 0) != mpctx->display_sync_active))
    {
        FUNC0(mpctx, "Video sync mode %s.\n",
                   mpctx->display_sync_active ? "enabled" : "disabled");
    }

    if (!mpctx->display_sync_active) {
        mpctx->speed_factor_a = 1.0;
        mpctx->speed_factor_v = 1.0;
        FUNC3(mpctx);

        FUNC2(mpctx, mpctx->time_frame > 0 ?
            mpctx->time_frame * mpctx->video_speed : 0);
    }
}