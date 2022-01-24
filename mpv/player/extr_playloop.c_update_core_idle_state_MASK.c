#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct MPContext {scalar_t__ video_status; scalar_t__ audio_status; int playback_active; scalar_t__ in_playloop; int /*<<< orphan*/  stop_play; scalar_t__ restart_complete; int /*<<< orphan*/  paused; } ;

/* Variables and functions */
 int /*<<< orphan*/  MP_EVENT_CORE_IDLE ; 
 scalar_t__ STATUS_EOF ; 
 int /*<<< orphan*/  FUNC0 (struct MPContext*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct MPContext*) ; 

void FUNC2(struct MPContext *mpctx)
{
    bool eof = mpctx->video_status == STATUS_EOF &&
               mpctx->audio_status == STATUS_EOF;
    bool active = !mpctx->paused && mpctx->restart_complete &&
                  !mpctx->stop_play && mpctx->in_playloop && !eof;

    if (mpctx->playback_active != active) {
        mpctx->playback_active = active;

        FUNC1(mpctx);

        FUNC0(mpctx, MP_EVENT_CORE_IDLE, NULL);
    }
}