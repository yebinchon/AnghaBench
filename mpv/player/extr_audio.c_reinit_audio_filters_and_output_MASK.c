#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tmp ;
struct track {TYPE_4__* dec; } ;
struct mp_chmap {int /*<<< orphan*/  member_0; } ;
struct mp_aframe {int dummy; } ;
struct ao_chain {int spdif_passthrough; int spdif_failed; scalar_t__ ao_resume_time; TYPE_2__* filter; int /*<<< orphan*/  ao_buffer; struct track* track; int /*<<< orphan*/ * ao; int /*<<< orphan*/  output_frame; } ;
struct TYPE_5__ {int num_chmaps; int /*<<< orphan*/ * chmaps; scalar_t__ auto_safe; int /*<<< orphan*/  set; } ;
struct MPOpts {scalar_t__ gapless_audio; scalar_t__ audio_wait_open; TYPE_1__ audio_output_channels; scalar_t__ audio_exclusive; scalar_t__ audio_stream_silence; scalar_t__ ao_null_fallback; scalar_t__ audio_output_format; scalar_t__ force_srate; } ;
struct MPContext {int /*<<< orphan*/ * ao; int /*<<< orphan*/  error_playing; int /*<<< orphan*/  encode_lavc_ctx; int /*<<< orphan*/  global; struct mp_aframe* ao_filter_fmt; struct ao_chain* ao_chain; struct MPOpts* opts; } ;
struct TYPE_7__ {int try_spdif; } ;
struct TYPE_6__ {int /*<<< orphan*/  output_aformat; int /*<<< orphan*/  ao_needs_update; } ;

/* Variables and functions */
 int AO_INIT_EXCLUSIVE ; 
 int AO_INIT_NULL_FALLBACK ; 
 int AO_INIT_SAFE_MULTICHANNEL_ONLY ; 
 int AO_INIT_STREAM_SILENCE ; 
 int /*<<< orphan*/  MPV_ERROR_AO_INIT_FAILED ; 
 int /*<<< orphan*/  MPV_EVENT_AUDIO_RECONFIG ; 
 int /*<<< orphan*/  FUNC0 (struct MPContext*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct MPContext*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct MPContext*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 (int) ; 
 scalar_t__ FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int*,int*,struct mp_chmap*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct MPContext*,int /*<<< orphan*/ ,int,int,struct mp_chmap) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct ao_chain*) ; 
 int /*<<< orphan*/  FUNC13 (char*,int,int,int,struct mp_chmap) ; 
 int /*<<< orphan*/  FUNC14 (struct MPContext*) ; 
 int /*<<< orphan*/  FUNC15 (struct MPContext*,struct track*) ; 
 scalar_t__ FUNC16 (struct mp_aframe*,struct mp_aframe*) ; 
 int /*<<< orphan*/  FUNC17 (struct mp_aframe*) ; 
 int /*<<< orphan*/  FUNC18 (struct mp_aframe*,struct mp_chmap*) ; 
 int FUNC19 (struct mp_aframe*) ; 
 int FUNC20 (struct mp_aframe*) ; 
 struct mp_aframe* FUNC21 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (struct mp_aframe*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (struct mp_aframe*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC24 (struct mp_aframe*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ,int,struct mp_chmap*,int) ; 
 int /*<<< orphan*/  FUNC26 (struct mp_chmap*,struct mp_chmap*) ; 
 int /*<<< orphan*/  FUNC27 (struct mp_chmap*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC28 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC29 (struct MPContext*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC30 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC31 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC32 () ; 
 int /*<<< orphan*/  FUNC33 (struct MPContext*) ; 
 int /*<<< orphan*/  mp_wakeup_core_cb ; 
 int /*<<< orphan*/  FUNC34 (struct MPContext*) ; 
 int /*<<< orphan*/  FUNC35 (struct mp_aframe*) ; 
 int /*<<< orphan*/  FUNC36 (struct MPContext*) ; 
 int /*<<< orphan*/  FUNC37 (struct MPContext*) ; 
 int /*<<< orphan*/  FUNC38 (struct MPContext*,int) ; 

__attribute__((used)) static void FUNC39(struct MPContext *mpctx)
{
    struct MPOpts *opts = mpctx->opts;
    struct ao_chain *ao_c = mpctx->ao_chain;
    FUNC12(ao_c);
    struct track *track = ao_c->track;

    if (!ao_c->filter->ao_needs_update)
        return;

    FUNC3(&ao_c->output_frame); // stale?

    // The "ideal" filter output format
    struct mp_aframe *out_fmt = FUNC21(ao_c->filter->output_aformat);
    if (!out_fmt)
        FUNC4();

    if (!FUNC17(out_fmt)) {
        FUNC35(out_fmt);
        goto init_error;
    }

    if (FUNC5(FUNC19(out_fmt))) {
        if (opts->force_srate)
            FUNC24(out_fmt, opts->force_srate);
        if (opts->audio_output_format)
            FUNC23(out_fmt, opts->audio_output_format);
        if (opts->audio_output_channels.num_chmaps == 1)
            FUNC22(out_fmt, &opts->audio_output_channels.chmaps[0]);
    }

    // Weak gapless audio: if the filter output format is the same as the
    // previous one, keep the AO and don't reinit anything.
    // Strong gapless: always keep the AO
    if ((mpctx->ao_filter_fmt && mpctx->ao && opts->gapless_audio < 0 &&
         FUNC16(mpctx->ao_filter_fmt, out_fmt)) ||
        (mpctx->ao && opts->gapless_audio > 0))
    {
        FUNC31(ao_c->filter, mpctx->ao);
        FUNC35(out_fmt);
        return;
    }

    FUNC37(mpctx);

    int out_rate = FUNC20(out_fmt);
    int out_format = FUNC19(out_fmt);
    struct mp_chmap out_channels = {0};
    FUNC18(out_fmt, &out_channels);

    int ao_flags = 0;
    bool spdif_fallback = FUNC6(out_format) &&
                          ao_c->spdif_passthrough;

    if (opts->ao_null_fallback && !spdif_fallback)
        ao_flags |= AO_INIT_NULL_FALLBACK;

    if (opts->audio_stream_silence)
        ao_flags |= AO_INIT_STREAM_SILENCE;

    if (opts->audio_exclusive)
        ao_flags |= AO_INIT_EXCLUSIVE;

    if (FUNC5(out_format)) {
        if (!opts->audio_output_channels.set ||
            opts->audio_output_channels.auto_safe)
            ao_flags |= AO_INIT_SAFE_MULTICHANNEL_ONLY;

        FUNC27(&out_channels,
                          opts->audio_output_channels.chmaps,
                          opts->audio_output_channels.num_chmaps);
    }

    mpctx->ao_filter_fmt = out_fmt;

    mpctx->ao = FUNC10(mpctx->global, ao_flags, mp_wakeup_core_cb,
                             mpctx, mpctx->encode_lavc_ctx, out_rate,
                             out_format, out_channels);
    ao_c->ao = mpctx->ao;

    int ao_rate = 0;
    int ao_format = 0;
    struct mp_chmap ao_channels = {0};
    if (mpctx->ao)
        FUNC8(mpctx->ao, &ao_rate, &ao_format, &ao_channels);

    // Verify passthrough format was not changed.
    if (mpctx->ao && FUNC6(out_format)) {
        if (out_rate != ao_rate || out_format != ao_format ||
            !FUNC26(&out_channels, &ao_channels))
        {
            FUNC0(mpctx, "Passthrough format unsupported.\n");
            FUNC11(mpctx->ao);
            mpctx->ao = NULL;
            ao_c->ao = NULL;
        }
    }

    if (!mpctx->ao) {
        // If spdif was used, try to fallback to PCM.
        if (spdif_fallback && ao_c->track && ao_c->track->dec) {
            FUNC2(mpctx, "Falling back to PCM output.\n");
            ao_c->spdif_passthrough = false;
            ao_c->spdif_failed = true;
            ao_c->track->dec->try_spdif = false;
            if (!FUNC28(ao_c->track->dec))
                goto init_error;
            FUNC34(mpctx);
            FUNC30(ao_c->filter);
            FUNC33(mpctx); // reinit with new format next time
            return;
        }

        FUNC0(mpctx, "Could not open/initialize audio device -> no sound.\n");
        mpctx->error_playing = MPV_ERROR_AO_INIT_FAILED;
        goto init_error;
    }

    FUNC25(ao_c->ao_buffer, ao_format, &ao_channels,
                                ao_rate);

    char tmp[192];
    FUNC1(mpctx, "AO: [%s] %s\n", FUNC9(mpctx->ao),
            FUNC13(tmp, sizeof(tmp), ao_rate, ao_format,
                                    ao_channels));
    FUNC2(mpctx, "AO: Description: %s\n", FUNC7(mpctx->ao));
    FUNC38(mpctx, true);

    ao_c->ao_resume_time =
        opts->audio_wait_open > 0 ? FUNC32() + opts->audio_wait_open : 0;

    FUNC31(ao_c->filter, mpctx->ao);

    FUNC14(mpctx);

    FUNC29(mpctx, MPV_EVENT_AUDIO_RECONFIG, NULL);

    return;

init_error:
    FUNC36(mpctx);
    FUNC37(mpctx);
    FUNC15(mpctx, track);
}