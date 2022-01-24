#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct MPContext {double sleeptime; scalar_t__ video_status; double start_timestamp; TYPE_2__* video_out; int /*<<< orphan*/  osd; TYPE_1__* vo_chain; int /*<<< orphan*/  paused; } ;
struct TYPE_5__ {int /*<<< orphan*/  config_ok; } ;
struct TYPE_4__ {int /*<<< orphan*/  is_coverart; } ;

/* Variables and functions */
 scalar_t__ STATUS_PLAYING ; 
 int /*<<< orphan*/  FUNC0 (struct MPContext*,double) ; 
 double FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 scalar_t__ FUNC4 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC5(struct MPContext *mpctx)
{
    if (!mpctx->video_out || !mpctx->video_out->config_ok)
        return;
    // If we're playing normally, let OSD be redrawn naturally as part of
    // video display.
    if (!mpctx->paused) {
        if (mpctx->sleeptime < 0.1 && mpctx->video_status == STATUS_PLAYING)
            return;
    }
    // Don't redraw immediately during a seek (makes it significantly slower).
    bool use_video = mpctx->vo_chain && !mpctx->vo_chain->is_coverart;
    if (use_video && FUNC1() - mpctx->start_timestamp < 0.1) {
        FUNC0(mpctx, 0.1);
        return;
    }
    bool want_redraw = FUNC2(mpctx->osd) ||
                       FUNC4(mpctx->video_out);
    if (!want_redraw)
        return;
    FUNC3(mpctx->video_out);
}