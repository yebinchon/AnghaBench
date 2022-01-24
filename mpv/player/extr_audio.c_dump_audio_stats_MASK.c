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
struct MPContext {scalar_t__ audio_status; int audio_stat_start; double written_audio; int /*<<< orphan*/  ao; scalar_t__ paused; int /*<<< orphan*/  log; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct MPContext*,char*,double) ; 
 int /*<<< orphan*/  MSGL_STATS ; 
 scalar_t__ STATUS_PLAYING ; 
 double FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 () ; 

__attribute__((used)) static void FUNC4(struct MPContext *mpctx)
{
    if (!FUNC2(mpctx->log, MSGL_STATS))
        return;
    if (mpctx->audio_status != STATUS_PLAYING || !mpctx->ao || mpctx->paused) {
        mpctx->audio_stat_start = 0;
        return;
    }

    double delay = FUNC1(mpctx->ao);
    if (!mpctx->audio_stat_start) {
        mpctx->audio_stat_start = FUNC3();
        mpctx->written_audio = delay;
    }
    double current_audio = mpctx->written_audio - delay;
    double current_time = (FUNC3() - mpctx->audio_stat_start) / 1e6;
    FUNC0(mpctx, "value %f ao-dev", current_audio - current_time);
}