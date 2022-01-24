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
struct MPOpts {int pause; } ;
struct MPContext {int paused; int osd_force_update; int /*<<< orphan*/  time_frame; scalar_t__ step_frames; scalar_t__ osd_function; scalar_t__ video_out; scalar_t__ ao; scalar_t__ ao_chain; scalar_t__ paused_for_cache; struct MPOpts* opts; } ;

/* Variables and functions */
 int /*<<< orphan*/  MPV_EVENT_PAUSE ; 
 int /*<<< orphan*/  MPV_EVENT_UNPAUSE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (struct MPContext*) ; 
 int /*<<< orphan*/  FUNC3 (struct MPContext*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct MPContext*) ; 
 int /*<<< orphan*/  FUNC5 (struct MPContext*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int) ; 

void FUNC7(struct MPContext *mpctx, bool user_pause)
{
    struct MPOpts *opts = mpctx->opts;
    bool send_update = false;

    if (opts->pause != user_pause)
        send_update = true;
    opts->pause = user_pause;

    bool internal_paused = opts->pause || mpctx->paused_for_cache;
    if (internal_paused != mpctx->paused) {
        mpctx->paused = internal_paused;
        send_update = true;

        if (mpctx->ao && mpctx->ao_chain) {
            if (internal_paused) {
                FUNC0(mpctx->ao);
            } else {
                FUNC1(mpctx->ao);
            }
        }

        if (mpctx->video_out)
            FUNC6(mpctx->video_out, internal_paused);

        mpctx->osd_function = 0;
        mpctx->osd_force_update = true;

        FUNC4(mpctx);

        if (internal_paused) {
            mpctx->step_frames = 0;
            mpctx->time_frame -= FUNC2(mpctx);
        } else {
            (void)FUNC2(mpctx); // ignore time that passed during pause
        }
    }

    FUNC5(mpctx);

    if (send_update)
        FUNC3(mpctx, opts->pause ? MPV_EVENT_PAUSE : MPV_EVENT_UNPAUSE, 0);
}