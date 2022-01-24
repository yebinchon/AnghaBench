#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct mp_chmap {int dummy; } ;
struct ao_chain {scalar_t__ ao_resume_time; int underrun; int /*<<< orphan*/  ao_buffer; TYPE_1__* filter; TYPE_4__* track; } ;
struct MPOpts {int sync_max_audio_change; int sync_max_video_change; scalar_t__ video_sync; double sync_audio_drop_size; scalar_t__ gapless_audio; } ;
struct MPContext {scalar_t__ audio_status; int audio_speed; scalar_t__ video_status; scalar_t__ delay; scalar_t__ last_av_difference; double audio_drop_throttle; int /*<<< orphan*/  encode_lavc_ctx; scalar_t__ ao; scalar_t__ paused; scalar_t__ display_sync_active; scalar_t__ vo_chain; struct ao_chain* ao_chain; struct MPOpts* opts; } ;
struct TYPE_8__ {TYPE_2__* dec; } ;
struct TYPE_7__ {int /*<<< orphan*/ * pins; } ;
struct TYPE_6__ {scalar_t__ pts_reset; } ;
struct TYPE_5__ {scalar_t__ ao_needs_update; TYPE_3__* f; scalar_t__ got_output_eof; scalar_t__ failed_output_conversion; } ;

/* Variables and functions */
 int AD_EOF ; 
 int AD_OK ; 
 int AD_WAIT ; 
 int AOPLAY_FINAL_CHUNK ; 
 int /*<<< orphan*/  AO_EVENT_INITIAL_UNBLOCK ; 
 int /*<<< orphan*/  AO_EVENT_RELOAD ; 
 int /*<<< orphan*/  AO_EVENT_UNDERRUN ; 
 int FUNC0 (int,int) ; 
 int FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct MPContext*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct MPContext*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct MPContext*,char*) ; 
 scalar_t__ STATUS_DRAINING ; 
 scalar_t__ STATUS_EOF ; 
 scalar_t__ STATUS_FILLING ; 
 scalar_t__ STATUS_PLAYING ; 
 scalar_t__ STATUS_READY ; 
 scalar_t__ STATUS_SYNCING ; 
 int /*<<< orphan*/  STREAM_AUDIO ; 
 scalar_t__ VS_DISP_ADROP ; 
 int FUNC5 (int) ; 
 int FUNC6 (int) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,int*,int*,struct mp_chmap*) ; 
 int FUNC9 (scalar_t__) ; 
 scalar_t__ FUNC10 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__) ; 
 scalar_t__ FUNC13 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 int FUNC15 (double) ; 
 int /*<<< orphan*/  FUNC16 (struct MPContext*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct MPContext*,TYPE_4__*) ; 
 double FUNC19 (scalar_t__) ; 
 int FUNC20 (struct MPContext*,int /*<<< orphan*/ ,int) ; 
 int FUNC21 (struct MPContext*,int*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,int /*<<< orphan*/ ***,int*) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,int) ; 
 int FUNC25 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC27 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC29 (struct MPContext*,double) ; 
 scalar_t__ FUNC30 () ; 
 int /*<<< orphan*/  FUNC31 (struct MPContext*) ; 
 int /*<<< orphan*/  FUNC32 (struct MPContext*) ; 
 int /*<<< orphan*/  FUNC33 (struct MPContext*) ; 
 int /*<<< orphan*/  FUNC34 (struct MPContext*) ; 
 int FUNC35 (struct MPContext*,int /*<<< orphan*/ **,int,int) ; 

void FUNC36(struct MPContext *mpctx)
{
    struct MPOpts *opts = mpctx->opts;
    bool was_eof = mpctx->audio_status == STATUS_EOF;

    FUNC16(mpctx);

    if (mpctx->ao && FUNC10(mpctx->ao, AO_EVENT_RELOAD))
        FUNC33(mpctx);

    if (mpctx->ao && FUNC10(mpctx->ao,
                                               AO_EVENT_INITIAL_UNBLOCK))
        FUNC12(mpctx->ao);

    struct ao_chain *ao_c = mpctx->ao_chain;
    if (!ao_c)
        return;

    if (ao_c->filter->failed_output_conversion) {
        FUNC18(mpctx, ao_c->track);
        return;
    }

    // (if AO is set due to gapless from previous file, then we can try to
    // filter normally until the filter tells us to change the AO)
    if (!mpctx->ao) {
        // Probe the initial audio format.
        FUNC28(ao_c->filter->f->pins[1]);
        FUNC32(mpctx);
        if (!mpctx->ao_chain)
            return;
        if (ao_c->filter->got_output_eof &&
            mpctx->audio_status != STATUS_EOF)
        {
            mpctx->audio_status = STATUS_EOF;
            FUNC3(mpctx, "audio EOF without any data\n");
            FUNC27(ao_c->filter->f);
            FUNC17(mpctx->encode_lavc_ctx, STREAM_AUDIO);
        }
        return; // try again next iteration
    }

    if (ao_c->ao_resume_time > FUNC30()) {
        double remaining = ao_c->ao_resume_time - FUNC30();
        FUNC29(mpctx, remaining);
        return;
    }

    if (mpctx->vo_chain && ao_c->track && ao_c->track->dec &&
        ao_c->track->dec->pts_reset)
    {
        FUNC4(mpctx, "Reset playback due to audio timestamp reset.\n");
        FUNC34(mpctx);
        FUNC31(mpctx);
        return;
    }

    int ao_rate;
    int ao_format;
    struct mp_chmap ao_channels;
    FUNC8(mpctx->ao, &ao_rate, &ao_format, &ao_channels);
    double play_samplerate = ao_rate / mpctx->audio_speed;
    int align = FUNC6(ao_format);

    // If audio is infinitely fast, somehow try keeping approximate A/V sync.
    if (mpctx->audio_status == STATUS_PLAYING && FUNC13(mpctx->ao) &&
        mpctx->video_status != STATUS_EOF && mpctx->delay > 0)
        return;

    int playsize = FUNC9(mpctx->ao);

    if (FUNC10(mpctx->ao, AO_EVENT_UNDERRUN))
        ao_c->underrun = true;

    // Stop feeding data if an underrun happened. Something else needs to
    // "unblock" audio after underrun. handle_update_cache() does this and can
    // take the network state into account.
    if (ao_c->underrun)
        return;

    int skip = 0;
    bool sync_known = FUNC21(mpctx, &skip);
    if (skip > 0) {
        playsize = FUNC1(skip + 1, FUNC0(playsize, 2500)); // buffer extra data
    } else if (skip < 0) {
        playsize = FUNC0(1, playsize + skip); // silence will be prepended
    }

    int skip_duplicate = 0; // >0: skip, <0: duplicate
    double drop_limit =
        (opts->sync_max_audio_change + opts->sync_max_video_change) / 100;
    if (mpctx->display_sync_active && opts->video_sync == VS_DISP_ADROP &&
        FUNC19(mpctx->last_av_difference) >= opts->sync_audio_drop_size &&
        mpctx->audio_drop_throttle < drop_limit &&
        mpctx->audio_status == STATUS_PLAYING)
    {
        int samples = FUNC15(opts->sync_audio_drop_size * play_samplerate);
        samples = (samples + align / 2) / align * align;

        skip_duplicate = mpctx->last_av_difference >= 0 ? -samples : samples;

        playsize = FUNC0(playsize, samples);

        mpctx->audio_drop_throttle += 1 - drop_limit - samples / play_samplerate;
    }

    playsize = playsize / align * align;

    int status = mpctx->audio_status >= STATUS_DRAINING ? AD_EOF : AD_OK;
    bool working = false;
    if (playsize > FUNC25(ao_c->ao_buffer)) {
        status = FUNC20(mpctx, ao_c->ao_buffer, playsize);
        if (ao_c->filter->ao_needs_update) {
            FUNC32(mpctx);
            FUNC31(mpctx);
            return; // retry on next iteration
        }
        if (status == AD_WAIT)
            return;
        working = true;
    }

    // If EOF was reached before, but now something can be decoded, try to
    // restart audio properly. This helps with video files where audio starts
    // later. Retrying is needed to get the correct sync PTS.
    if (mpctx->audio_status >= STATUS_DRAINING &&
        FUNC25(ao_c->ao_buffer) > 0)
    {
        mpctx->audio_status = STATUS_SYNCING;
        return; // retry on next iteration
    }

    bool end_sync = false;
    if (skip >= 0) {
        int max = FUNC25(ao_c->ao_buffer);
        FUNC26(ao_c->ao_buffer, FUNC1(skip, max));
        // If something is left, we definitely reached the target time.
        end_sync |= sync_known && skip < max;
        working |= skip > 0;
    } else if (skip < 0) {
        if (-skip > playsize) { // heuristic against making the buffer too large
            FUNC11(mpctx->ao); // some AOs repeat data on underflow
            mpctx->audio_status = STATUS_DRAINING;
            mpctx->delay = 0;
            return;
        }
        FUNC24(ao_c->ao_buffer, -skip);
        end_sync = true;
    }

    if (skip_duplicate) {
        int max = FUNC25(ao_c->ao_buffer);
        if (FUNC5(skip_duplicate) > max)
            skip_duplicate = skip_duplicate >= 0 ? max : -max;
        mpctx->last_av_difference += skip_duplicate / play_samplerate;
        if (skip_duplicate >= 0) {
            FUNC26(ao_c->ao_buffer, skip_duplicate);
            FUNC2(mpctx, "drop-audio");
        } else {
            FUNC22(ao_c->ao_buffer, -skip_duplicate);
            FUNC2(mpctx, "duplicate-audio");
        }
        FUNC3(mpctx, "audio skip_duplicate=%d\n", skip_duplicate);
    }

    if (mpctx->audio_status == STATUS_SYNCING) {
        if (end_sync)
            mpctx->audio_status = STATUS_FILLING;
        if (status != AD_OK && !FUNC25(ao_c->ao_buffer))
            mpctx->audio_status = STATUS_EOF;
        if (working || end_sync)
            FUNC31(mpctx);
        return; // continue on next iteration
    }

    FUNC14(mpctx->audio_status >= STATUS_FILLING);

    // We already have as much data as the audio device wants, and can start
    // writing it any time.
    if (mpctx->audio_status == STATUS_FILLING)
        mpctx->audio_status = STATUS_READY;

    // Even if we're done decoding and syncing, let video start first - this is
    // required, because sending audio to the AO already starts playback.
    if (mpctx->audio_status == STATUS_READY) {
        // Warning: relies on handle_playback_restart() being called afterwards.
        return;
    }

    bool audio_eof = status == AD_EOF;
    bool partial_fill = false;
    int playflags = 0;

    if (playsize > FUNC25(ao_c->ao_buffer)) {
        playsize = FUNC25(ao_c->ao_buffer);
        partial_fill = true;
    }

    audio_eof &= partial_fill;

    if (audio_eof && playsize < align)
        playsize = 0;

    // With gapless audio, delay this to ao_uninit. There must be only
    // 1 final chunk, and that is handled when calling ao_uninit().
    // If video is still on-going, trying to do gapless is pointless, as video
    // will have to continue for a while with audio stopped (but still try to
    // do it if gapless is forced, mostly for testing).
    if (audio_eof && (!opts->gapless_audio ||
        (opts->gapless_audio <= 0 && mpctx->video_status != STATUS_EOF)))
        playflags |= AOPLAY_FINAL_CHUNK;

    uint8_t **planes;
    int samples;
    FUNC23(ao_c->ao_buffer, &planes, &samples);
    if (audio_eof || samples >= align)
        samples = samples / align * align;
    samples = FUNC1(samples, mpctx->paused ? 0 : playsize);
    int played = FUNC35(mpctx, planes, samples, playflags);
    FUNC14(played >= 0 && played <= samples);
    FUNC26(ao_c->ao_buffer, played);

    mpctx->audio_drop_throttle =
        FUNC0(0, mpctx->audio_drop_throttle - played / play_samplerate);

    FUNC16(mpctx);

    mpctx->audio_status = STATUS_PLAYING;
    if (audio_eof && !playsize) {
        mpctx->audio_status = STATUS_DRAINING;
        // Wait until the AO has played all queued data. In the gapless case,
        // we trigger EOF immediately, and let it play asynchronously.
        if (FUNC7(mpctx->ao) || opts->gapless_audio) {
            mpctx->audio_status = STATUS_EOF;
            if (!was_eof) {
                FUNC3(mpctx, "audio EOF reached\n");
                FUNC31(mpctx);
                FUNC17(mpctx->encode_lavc_ctx, STREAM_AUDIO);
            }
        }
    }
}