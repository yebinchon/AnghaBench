
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int tmp ;
struct track {TYPE_4__* dec; } ;
struct mp_chmap {int member_0; } ;
struct mp_aframe {int dummy; } ;
struct ao_chain {int spdif_passthrough; int spdif_failed; scalar_t__ ao_resume_time; TYPE_2__* filter; int ao_buffer; struct track* track; int * ao; int output_frame; } ;
struct TYPE_5__ {int num_chmaps; int * chmaps; scalar_t__ auto_safe; int set; } ;
struct MPOpts {scalar_t__ gapless_audio; scalar_t__ audio_wait_open; TYPE_1__ audio_output_channels; scalar_t__ audio_exclusive; scalar_t__ audio_stream_silence; scalar_t__ ao_null_fallback; scalar_t__ audio_output_format; scalar_t__ force_srate; } ;
struct MPContext {int * ao; int error_playing; int encode_lavc_ctx; int global; struct mp_aframe* ao_filter_fmt; struct ao_chain* ao_chain; struct MPOpts* opts; } ;
struct TYPE_7__ {int try_spdif; } ;
struct TYPE_6__ {int output_aformat; int ao_needs_update; } ;


 int AO_INIT_EXCLUSIVE ;
 int AO_INIT_NULL_FALLBACK ;
 int AO_INIT_SAFE_MULTICHANNEL_ONLY ;
 int AO_INIT_STREAM_SILENCE ;
 int MPV_ERROR_AO_INIT_FAILED ;
 int MPV_EVENT_AUDIO_RECONFIG ;
 int MP_ERR (struct MPContext*,char*) ;
 int MP_INFO (struct MPContext*,char*,int ,int ) ;
 int MP_VERBOSE (struct MPContext*,char*,...) ;
 int TA_FREEP (int *) ;
 int abort () ;
 scalar_t__ af_fmt_is_pcm (int) ;
 scalar_t__ af_fmt_is_spdif (int) ;
 int ao_get_description (int *) ;
 int ao_get_format (int *,int*,int*,struct mp_chmap*) ;
 int ao_get_name (int *) ;
 int * ao_init_best (int ,int,int ,struct MPContext*,int ,int,int,struct mp_chmap) ;
 int ao_uninit (int *) ;
 int assert (struct ao_chain*) ;
 int audio_config_to_str_buf (char*,int,int,int,struct mp_chmap) ;
 int audio_update_volume (struct MPContext*) ;
 int error_on_track (struct MPContext*,struct track*) ;
 scalar_t__ keep_weak_gapless_format (struct mp_aframe*,struct mp_aframe*) ;
 int mp_aframe_config_is_valid (struct mp_aframe*) ;
 int mp_aframe_get_chmap (struct mp_aframe*,struct mp_chmap*) ;
 int mp_aframe_get_format (struct mp_aframe*) ;
 int mp_aframe_get_rate (struct mp_aframe*) ;
 struct mp_aframe* mp_aframe_new_ref (int ) ;
 int mp_aframe_set_chmap (struct mp_aframe*,int *) ;
 int mp_aframe_set_format (struct mp_aframe*,scalar_t__) ;
 int mp_aframe_set_rate (struct mp_aframe*,scalar_t__) ;
 int mp_audio_buffer_reinit_fmt (int ,int,struct mp_chmap*,int) ;
 int mp_chmap_equals (struct mp_chmap*,struct mp_chmap*) ;
 int mp_chmap_sel_list (struct mp_chmap*,int *,int) ;
 int mp_decoder_wrapper_reinit (TYPE_4__*) ;
 int mp_notify (struct MPContext*,int ,int *) ;
 int mp_output_chain_reset_harder (TYPE_2__*) ;
 int mp_output_chain_set_ao (TYPE_2__*,int *) ;
 scalar_t__ mp_time_sec () ;
 int mp_wakeup_core (struct MPContext*) ;
 int mp_wakeup_core_cb ;
 int reset_audio_state (struct MPContext*) ;
 int talloc_free (struct mp_aframe*) ;
 int uninit_audio_chain (struct MPContext*) ;
 int uninit_audio_out (struct MPContext*) ;
 int update_window_title (struct MPContext*,int) ;

__attribute__((used)) static void reinit_audio_filters_and_output(struct MPContext *mpctx)
{
    struct MPOpts *opts = mpctx->opts;
    struct ao_chain *ao_c = mpctx->ao_chain;
    assert(ao_c);
    struct track *track = ao_c->track;

    if (!ao_c->filter->ao_needs_update)
        return;

    TA_FREEP(&ao_c->output_frame);


    struct mp_aframe *out_fmt = mp_aframe_new_ref(ao_c->filter->output_aformat);
    if (!out_fmt)
        abort();

    if (!mp_aframe_config_is_valid(out_fmt)) {
        talloc_free(out_fmt);
        goto init_error;
    }

    if (af_fmt_is_pcm(mp_aframe_get_format(out_fmt))) {
        if (opts->force_srate)
            mp_aframe_set_rate(out_fmt, opts->force_srate);
        if (opts->audio_output_format)
            mp_aframe_set_format(out_fmt, opts->audio_output_format);
        if (opts->audio_output_channels.num_chmaps == 1)
            mp_aframe_set_chmap(out_fmt, &opts->audio_output_channels.chmaps[0]);
    }




    if ((mpctx->ao_filter_fmt && mpctx->ao && opts->gapless_audio < 0 &&
         keep_weak_gapless_format(mpctx->ao_filter_fmt, out_fmt)) ||
        (mpctx->ao && opts->gapless_audio > 0))
    {
        mp_output_chain_set_ao(ao_c->filter, mpctx->ao);
        talloc_free(out_fmt);
        return;
    }

    uninit_audio_out(mpctx);

    int out_rate = mp_aframe_get_rate(out_fmt);
    int out_format = mp_aframe_get_format(out_fmt);
    struct mp_chmap out_channels = {0};
    mp_aframe_get_chmap(out_fmt, &out_channels);

    int ao_flags = 0;
    bool spdif_fallback = af_fmt_is_spdif(out_format) &&
                          ao_c->spdif_passthrough;

    if (opts->ao_null_fallback && !spdif_fallback)
        ao_flags |= AO_INIT_NULL_FALLBACK;

    if (opts->audio_stream_silence)
        ao_flags |= AO_INIT_STREAM_SILENCE;

    if (opts->audio_exclusive)
        ao_flags |= AO_INIT_EXCLUSIVE;

    if (af_fmt_is_pcm(out_format)) {
        if (!opts->audio_output_channels.set ||
            opts->audio_output_channels.auto_safe)
            ao_flags |= AO_INIT_SAFE_MULTICHANNEL_ONLY;

        mp_chmap_sel_list(&out_channels,
                          opts->audio_output_channels.chmaps,
                          opts->audio_output_channels.num_chmaps);
    }

    mpctx->ao_filter_fmt = out_fmt;

    mpctx->ao = ao_init_best(mpctx->global, ao_flags, mp_wakeup_core_cb,
                             mpctx, mpctx->encode_lavc_ctx, out_rate,
                             out_format, out_channels);
    ao_c->ao = mpctx->ao;

    int ao_rate = 0;
    int ao_format = 0;
    struct mp_chmap ao_channels = {0};
    if (mpctx->ao)
        ao_get_format(mpctx->ao, &ao_rate, &ao_format, &ao_channels);


    if (mpctx->ao && af_fmt_is_spdif(out_format)) {
        if (out_rate != ao_rate || out_format != ao_format ||
            !mp_chmap_equals(&out_channels, &ao_channels))
        {
            MP_ERR(mpctx, "Passthrough format unsupported.\n");
            ao_uninit(mpctx->ao);
            mpctx->ao = ((void*)0);
            ao_c->ao = ((void*)0);
        }
    }

    if (!mpctx->ao) {

        if (spdif_fallback && ao_c->track && ao_c->track->dec) {
            MP_VERBOSE(mpctx, "Falling back to PCM output.\n");
            ao_c->spdif_passthrough = 0;
            ao_c->spdif_failed = 1;
            ao_c->track->dec->try_spdif = 0;
            if (!mp_decoder_wrapper_reinit(ao_c->track->dec))
                goto init_error;
            reset_audio_state(mpctx);
            mp_output_chain_reset_harder(ao_c->filter);
            mp_wakeup_core(mpctx);
            return;
        }

        MP_ERR(mpctx, "Could not open/initialize audio device -> no sound.\n");
        mpctx->error_playing = MPV_ERROR_AO_INIT_FAILED;
        goto init_error;
    }

    mp_audio_buffer_reinit_fmt(ao_c->ao_buffer, ao_format, &ao_channels,
                                ao_rate);

    char tmp[192];
    MP_INFO(mpctx, "AO: [%s] %s\n", ao_get_name(mpctx->ao),
            audio_config_to_str_buf(tmp, sizeof(tmp), ao_rate, ao_format,
                                    ao_channels));
    MP_VERBOSE(mpctx, "AO: Description: %s\n", ao_get_description(mpctx->ao));
    update_window_title(mpctx, 1);

    ao_c->ao_resume_time =
        opts->audio_wait_open > 0 ? mp_time_sec() + opts->audio_wait_open : 0;

    mp_output_chain_set_ao(ao_c->filter, mpctx->ao);

    audio_update_volume(mpctx);

    mp_notify(mpctx, MPV_EVENT_AUDIO_RECONFIG, ((void*)0));

    return;

init_error:
    uninit_audio_chain(mpctx);
    uninit_audio_out(mpctx);
    error_on_track(mpctx, track);
}
