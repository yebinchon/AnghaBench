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
struct MPOpts {int video_sync; int sync_max_audio_change; double playback_speed; } ;
struct MPContext {scalar_t__ audio_status; double speed_factor_a; double speed_factor_v; double last_av_difference; int display_sync_drift_dir; double audio_speed; struct MPOpts* opts; } ;

/* Variables and functions */
 double FUNC0 (double,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct MPContext*,char*,double) ; 
 scalar_t__ STATUS_PLAYING ; 
 int VS_DISP_RESAMPLE ; 
 double FUNC2 (struct MPContext*,double) ; 
 double FUNC3 (double) ; 
 scalar_t__ FUNC4 (double) ; 

__attribute__((used)) static void FUNC5(struct MPContext *mpctx, double vsync)
{
    struct MPOpts *opts = mpctx->opts;
    int mode = opts->video_sync;

    if (mode != VS_DISP_RESAMPLE || mpctx->audio_status != STATUS_PLAYING) {
        mpctx->speed_factor_a = mpctx->speed_factor_v;
        return;
    }

    // Try to smooth out audio timing drifts. This can happen if either
    // video isn't playing at expected speed, or audio is not playing at
    // the requested speed. Both are unavoidable.
    // The audio desync is made up of 2 parts: 1. drift due to rounding
    // errors and imperfect information, and 2. an offset, due to
    // unaligned audio/video start, or disruptive events halting audio
    // or video for a small time.
    // Instead of trying to be clever, just apply an awfully dumb drift
    // compensation with a constant factor, which does what we want. In
    // theory we could calculate the exact drift compensation needed,
    // but it likely would be wrong anyway, and we'd run into the same
    // issues again, except with more complex code.
    // 1 means drifts to positive, -1 means drifts to negative
    double max_drift = vsync / 2;
    double av_diff = mpctx->last_av_difference;
    int new = mpctx->display_sync_drift_dir;
    if (av_diff * -mpctx->display_sync_drift_dir >= 0)
        new = 0;
    if (FUNC3(av_diff) > max_drift)
        new = av_diff >= 0 ? 1 : -1;

    bool change = mpctx->display_sync_drift_dir != new;
    if (new || change) {
        if (change)
            FUNC1(mpctx, "Change display sync audio drift: %d\n", new);
        mpctx->display_sync_drift_dir = new;

        double max_correct = opts->sync_max_audio_change / 100;
        double audio_factor = 1 + max_correct * -mpctx->display_sync_drift_dir;

        if (new == 0) {
            // If we're resetting, actually try to be clever and pick a speed
            // which compensates the general drift we're getting.
            double drift = FUNC2(mpctx, vsync);
            if (FUNC4(drift)) {
                // other = will be multiplied with audio_factor for final speed
                double other = mpctx->opts->playback_speed * mpctx->speed_factor_v;
                audio_factor = (mpctx->audio_speed - drift) / other;
                FUNC1(mpctx, "Compensation factor: %f\n", audio_factor);
            }
        }

        audio_factor = FUNC0(audio_factor, 1 - max_correct, 1 + max_correct);
        mpctx->speed_factor_a = audio_factor * mpctx->speed_factor_v;
    }
}