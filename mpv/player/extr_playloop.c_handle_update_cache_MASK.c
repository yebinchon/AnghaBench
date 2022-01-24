#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct demux_reader_state {int underrun; int ts_duration; scalar_t__ eof; int /*<<< orphan*/  idle; } ;
struct MPOpts {int cache_pause_wait; scalar_t__ cache_pause_initial; scalar_t__ cache_pause; } ;
struct MPContext {int demux_underrun; scalar_t__ play_dir; scalar_t__ video_status; scalar_t__ audio_status; int paused_for_cache; double cache_stop_time; double next_cache_update; int cache_buffer; TYPE_2__* vo_chain; TYPE_1__* ao_chain; scalar_t__ ao; scalar_t__ restart_complete; int /*<<< orphan*/  demuxer; struct MPOpts* opts; } ;
struct TYPE_4__ {int underrun; } ;
struct TYPE_3__ {scalar_t__ underrun; } ;

/* Variables and functions */
 int FUNC0 (int,int /*<<< orphan*/ ,double) ; 
 int /*<<< orphan*/  MP_EVENT_CACHE_UPDATE ; 
 int /*<<< orphan*/  FUNC1 (struct MPContext*,char*,int,int,...) ; 
 scalar_t__ STATUS_READY ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct MPContext*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct demux_reader_state*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct MPContext*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct MPContext*,double) ; 
 double FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (struct MPContext*) ; 
 int /*<<< orphan*/  FUNC10 (struct MPContext*) ; 

__attribute__((used)) static void FUNC11(struct MPContext *mpctx)
{
    bool force_update = false;
    struct MPOpts *opts = mpctx->opts;

    if (!mpctx->demuxer) {
        FUNC3(mpctx);
        return;
    }

    double now = FUNC8();

    struct demux_reader_state s;
    FUNC4(mpctx->demuxer, &s);

    mpctx->demux_underrun |= s.underrun;

    int cache_buffer = 100;
    bool use_pause_on_low_cache = FUNC5(mpctx->demuxer) &&
                                  opts->cache_pause && mpctx->play_dir > 0;

    if (!mpctx->restart_complete) {
        // Audio or video is restarting, and initial buffering is enabled. Make
        // sure we actually restart them in paused mode, so no audio gets
        // dropped and video technically doesn't start yet.
        use_pause_on_low_cache &= opts->cache_pause_initial &&
                                    (mpctx->video_status == STATUS_READY ||
                                     mpctx->audio_status == STATUS_READY);
    }

    bool is_low = use_pause_on_low_cache && !s.idle &&
                  s.ts_duration < opts->cache_pause_wait;

    // Enter buffering state only if there actually was an underrun (or if
    // initial caching before playback restart is used).
    bool need_wait = is_low;
    if (is_low && !mpctx->paused_for_cache && mpctx->restart_complete) {
        // Wait only if an output underrun was registered. (Or if there is no
        // underrun detection.)
        bool output_underrun = false;

        if (mpctx->ao_chain) {
            output_underrun |=
                !(mpctx->ao && FUNC2(mpctx->ao)) ||
                mpctx->ao_chain->underrun;
        }
        if (mpctx->vo_chain)
            output_underrun |= mpctx->vo_chain->underrun;

        // Output underruns could be sporadic (unrelated to demuxer buffer state
        // and for example caused by slow decoding), so use a past demuxer
        // underrun as indication that the underrun was possibly due to a
        // demuxer underrun.
        need_wait = mpctx->demux_underrun && output_underrun;
    }

    // Let the underrun flag "stick" around until the cache has fully recovered.
    // See logic where demux_underrun is used.
    if (!is_low)
        mpctx->demux_underrun = false;

    if (mpctx->paused_for_cache != need_wait) {
        mpctx->paused_for_cache = need_wait;
        FUNC10(mpctx);
        force_update = true;
        if (mpctx->paused_for_cache)
            mpctx->cache_stop_time = now;
    }

    if (!mpctx->paused_for_cache)
        FUNC3(mpctx);

    if (mpctx->paused_for_cache) {
        cache_buffer =
            100 * FUNC0(s.ts_duration / opts->cache_pause_wait, 0, 0.99);
        FUNC7(mpctx, 0.2);
    }

    // Also update cache properties.
    bool busy = !s.idle;
    if (busy || mpctx->next_cache_update > 0) {
        if (mpctx->next_cache_update <= now) {
            mpctx->next_cache_update = busy ? now + 0.25 : 0;
            force_update = true;
        }
        if (mpctx->next_cache_update > 0)
            FUNC7(mpctx, mpctx->next_cache_update - now);
    }

    if (mpctx->cache_buffer != cache_buffer) {
        if ((mpctx->cache_buffer == 100) != (cache_buffer == 100)) {
            if (cache_buffer < 100) {
                FUNC1(mpctx, "Enter buffering (buffer went from %d%% -> %d%%) [%fs].\n",
                           mpctx->cache_buffer, cache_buffer, s.ts_duration);
            } else {
                double t = now - mpctx->cache_stop_time;
                FUNC1(mpctx, "End buffering (waited %f secs) [%fs].\n",
                           t, s.ts_duration);
            }
        } else {
            FUNC1(mpctx, "Still buffering (buffer went from %d%% -> %d%%) [%fs].\n",
                       mpctx->cache_buffer, cache_buffer, s.ts_duration);
        }
        mpctx->cache_buffer = cache_buffer;
        force_update = true;
    }

    if (s.eof && !busy)
        FUNC9(mpctx);

    if (force_update)
        FUNC6(mpctx, MP_EVENT_CACHE_UPDATE, NULL);
}