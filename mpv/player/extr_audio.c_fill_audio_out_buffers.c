
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct mp_chmap {int dummy; } ;
struct ao_chain {scalar_t__ ao_resume_time; int underrun; int ao_buffer; TYPE_1__* filter; TYPE_4__* track; } ;
struct MPOpts {int sync_max_audio_change; int sync_max_video_change; scalar_t__ video_sync; double sync_audio_drop_size; scalar_t__ gapless_audio; } ;
struct MPContext {scalar_t__ audio_status; int audio_speed; scalar_t__ video_status; scalar_t__ delay; scalar_t__ last_av_difference; double audio_drop_throttle; int encode_lavc_ctx; scalar_t__ ao; scalar_t__ paused; scalar_t__ display_sync_active; scalar_t__ vo_chain; struct ao_chain* ao_chain; struct MPOpts* opts; } ;
struct TYPE_8__ {TYPE_2__* dec; } ;
struct TYPE_7__ {int * pins; } ;
struct TYPE_6__ {scalar_t__ pts_reset; } ;
struct TYPE_5__ {scalar_t__ ao_needs_update; TYPE_3__* f; scalar_t__ got_output_eof; scalar_t__ failed_output_conversion; } ;


 int AD_EOF ;
 int AD_OK ;
 int AD_WAIT ;
 int AOPLAY_FINAL_CHUNK ;
 int AO_EVENT_INITIAL_UNBLOCK ;
 int AO_EVENT_RELOAD ;
 int AO_EVENT_UNDERRUN ;
 int MPMAX (int,int) ;
 int MPMIN (int,int) ;
 int MP_STATS (struct MPContext*,char*) ;
 int MP_VERBOSE (struct MPContext*,char*,...) ;
 int MP_WARN (struct MPContext*,char*) ;
 scalar_t__ STATUS_DRAINING ;
 scalar_t__ STATUS_EOF ;
 scalar_t__ STATUS_FILLING ;
 scalar_t__ STATUS_PLAYING ;
 scalar_t__ STATUS_READY ;
 scalar_t__ STATUS_SYNCING ;
 int STREAM_AUDIO ;
 scalar_t__ VS_DISP_ADROP ;
 int abs (int) ;
 int af_format_sample_alignment (int) ;
 scalar_t__ ao_eof_reached (scalar_t__) ;
 int ao_get_format (scalar_t__,int*,int*,struct mp_chmap*) ;
 int ao_get_space (scalar_t__) ;
 scalar_t__ ao_query_and_reset_events (scalar_t__,int ) ;
 int ao_reset (scalar_t__) ;
 int ao_unblock (scalar_t__) ;
 scalar_t__ ao_untimed (scalar_t__) ;
 int assert (int) ;
 int ceil (double) ;
 int dump_audio_stats (struct MPContext*) ;
 int encode_lavc_stream_eof (int ,int ) ;
 int error_on_track (struct MPContext*,TYPE_4__*) ;
 double fabs (scalar_t__) ;
 int filter_audio (struct MPContext*,int ,int) ;
 int get_sync_samples (struct MPContext*,int*) ;
 int mp_audio_buffer_duplicate (int ,int) ;
 int mp_audio_buffer_peek (int ,int ***,int*) ;
 int mp_audio_buffer_prepend_silence (int ,int) ;
 int mp_audio_buffer_samples (int ) ;
 int mp_audio_buffer_skip (int ,int) ;
 int mp_filter_reset (TYPE_3__*) ;
 int mp_pin_out_request_data (int ) ;
 int mp_set_timeout (struct MPContext*,double) ;
 scalar_t__ mp_time_sec () ;
 int mp_wakeup_core (struct MPContext*) ;
 int reinit_audio_filters_and_output (struct MPContext*) ;
 int reload_audio_output (struct MPContext*) ;
 int reset_playback_state (struct MPContext*) ;
 int write_to_ao (struct MPContext*,int **,int,int) ;

void fill_audio_out_buffers(struct MPContext *mpctx)
{
    struct MPOpts *opts = mpctx->opts;
    bool was_eof = mpctx->audio_status == STATUS_EOF;

    dump_audio_stats(mpctx);

    if (mpctx->ao && ao_query_and_reset_events(mpctx->ao, AO_EVENT_RELOAD))
        reload_audio_output(mpctx);

    if (mpctx->ao && ao_query_and_reset_events(mpctx->ao,
                                               AO_EVENT_INITIAL_UNBLOCK))
        ao_unblock(mpctx->ao);

    struct ao_chain *ao_c = mpctx->ao_chain;
    if (!ao_c)
        return;

    if (ao_c->filter->failed_output_conversion) {
        error_on_track(mpctx, ao_c->track);
        return;
    }



    if (!mpctx->ao) {

        mp_pin_out_request_data(ao_c->filter->f->pins[1]);
        reinit_audio_filters_and_output(mpctx);
        if (!mpctx->ao_chain)
            return;
        if (ao_c->filter->got_output_eof &&
            mpctx->audio_status != STATUS_EOF)
        {
            mpctx->audio_status = STATUS_EOF;
            MP_VERBOSE(mpctx, "audio EOF without any data\n");
            mp_filter_reset(ao_c->filter->f);
            encode_lavc_stream_eof(mpctx->encode_lavc_ctx, STREAM_AUDIO);
        }
        return;
    }

    if (ao_c->ao_resume_time > mp_time_sec()) {
        double remaining = ao_c->ao_resume_time - mp_time_sec();
        mp_set_timeout(mpctx, remaining);
        return;
    }

    if (mpctx->vo_chain && ao_c->track && ao_c->track->dec &&
        ao_c->track->dec->pts_reset)
    {
        MP_WARN(mpctx, "Reset playback due to audio timestamp reset.\n");
        reset_playback_state(mpctx);
        mp_wakeup_core(mpctx);
        return;
    }

    int ao_rate;
    int ao_format;
    struct mp_chmap ao_channels;
    ao_get_format(mpctx->ao, &ao_rate, &ao_format, &ao_channels);
    double play_samplerate = ao_rate / mpctx->audio_speed;
    int align = af_format_sample_alignment(ao_format);


    if (mpctx->audio_status == STATUS_PLAYING && ao_untimed(mpctx->ao) &&
        mpctx->video_status != STATUS_EOF && mpctx->delay > 0)
        return;

    int playsize = ao_get_space(mpctx->ao);

    if (ao_query_and_reset_events(mpctx->ao, AO_EVENT_UNDERRUN))
        ao_c->underrun = 1;




    if (ao_c->underrun)
        return;

    int skip = 0;
    bool sync_known = get_sync_samples(mpctx, &skip);
    if (skip > 0) {
        playsize = MPMIN(skip + 1, MPMAX(playsize, 2500));
    } else if (skip < 0) {
        playsize = MPMAX(1, playsize + skip);
    }

    int skip_duplicate = 0;
    double drop_limit =
        (opts->sync_max_audio_change + opts->sync_max_video_change) / 100;
    if (mpctx->display_sync_active && opts->video_sync == VS_DISP_ADROP &&
        fabs(mpctx->last_av_difference) >= opts->sync_audio_drop_size &&
        mpctx->audio_drop_throttle < drop_limit &&
        mpctx->audio_status == STATUS_PLAYING)
    {
        int samples = ceil(opts->sync_audio_drop_size * play_samplerate);
        samples = (samples + align / 2) / align * align;

        skip_duplicate = mpctx->last_av_difference >= 0 ? -samples : samples;

        playsize = MPMAX(playsize, samples);

        mpctx->audio_drop_throttle += 1 - drop_limit - samples / play_samplerate;
    }

    playsize = playsize / align * align;

    int status = mpctx->audio_status >= STATUS_DRAINING ? AD_EOF : AD_OK;
    bool working = 0;
    if (playsize > mp_audio_buffer_samples(ao_c->ao_buffer)) {
        status = filter_audio(mpctx, ao_c->ao_buffer, playsize);
        if (ao_c->filter->ao_needs_update) {
            reinit_audio_filters_and_output(mpctx);
            mp_wakeup_core(mpctx);
            return;
        }
        if (status == AD_WAIT)
            return;
        working = 1;
    }




    if (mpctx->audio_status >= STATUS_DRAINING &&
        mp_audio_buffer_samples(ao_c->ao_buffer) > 0)
    {
        mpctx->audio_status = STATUS_SYNCING;
        return;
    }

    bool end_sync = 0;
    if (skip >= 0) {
        int max = mp_audio_buffer_samples(ao_c->ao_buffer);
        mp_audio_buffer_skip(ao_c->ao_buffer, MPMIN(skip, max));

        end_sync |= sync_known && skip < max;
        working |= skip > 0;
    } else if (skip < 0) {
        if (-skip > playsize) {
            ao_reset(mpctx->ao);
            mpctx->audio_status = STATUS_DRAINING;
            mpctx->delay = 0;
            return;
        }
        mp_audio_buffer_prepend_silence(ao_c->ao_buffer, -skip);
        end_sync = 1;
    }

    if (skip_duplicate) {
        int max = mp_audio_buffer_samples(ao_c->ao_buffer);
        if (abs(skip_duplicate) > max)
            skip_duplicate = skip_duplicate >= 0 ? max : -max;
        mpctx->last_av_difference += skip_duplicate / play_samplerate;
        if (skip_duplicate >= 0) {
            mp_audio_buffer_skip(ao_c->ao_buffer, skip_duplicate);
            MP_STATS(mpctx, "drop-audio");
        } else {
            mp_audio_buffer_duplicate(ao_c->ao_buffer, -skip_duplicate);
            MP_STATS(mpctx, "duplicate-audio");
        }
        MP_VERBOSE(mpctx, "audio skip_duplicate=%d\n", skip_duplicate);
    }

    if (mpctx->audio_status == STATUS_SYNCING) {
        if (end_sync)
            mpctx->audio_status = STATUS_FILLING;
        if (status != AD_OK && !mp_audio_buffer_samples(ao_c->ao_buffer))
            mpctx->audio_status = STATUS_EOF;
        if (working || end_sync)
            mp_wakeup_core(mpctx);
        return;
    }

    assert(mpctx->audio_status >= STATUS_FILLING);



    if (mpctx->audio_status == STATUS_FILLING)
        mpctx->audio_status = STATUS_READY;



    if (mpctx->audio_status == STATUS_READY) {

        return;
    }

    bool audio_eof = status == AD_EOF;
    bool partial_fill = 0;
    int playflags = 0;

    if (playsize > mp_audio_buffer_samples(ao_c->ao_buffer)) {
        playsize = mp_audio_buffer_samples(ao_c->ao_buffer);
        partial_fill = 1;
    }

    audio_eof &= partial_fill;

    if (audio_eof && playsize < align)
        playsize = 0;






    if (audio_eof && (!opts->gapless_audio ||
        (opts->gapless_audio <= 0 && mpctx->video_status != STATUS_EOF)))
        playflags |= AOPLAY_FINAL_CHUNK;

    uint8_t **planes;
    int samples;
    mp_audio_buffer_peek(ao_c->ao_buffer, &planes, &samples);
    if (audio_eof || samples >= align)
        samples = samples / align * align;
    samples = MPMIN(samples, mpctx->paused ? 0 : playsize);
    int played = write_to_ao(mpctx, planes, samples, playflags);
    assert(played >= 0 && played <= samples);
    mp_audio_buffer_skip(ao_c->ao_buffer, played);

    mpctx->audio_drop_throttle =
        MPMAX(0, mpctx->audio_drop_throttle - played / play_samplerate);

    dump_audio_stats(mpctx);

    mpctx->audio_status = STATUS_PLAYING;
    if (audio_eof && !playsize) {
        mpctx->audio_status = STATUS_DRAINING;


        if (ao_eof_reached(mpctx->ao) || opts->gapless_audio) {
            mpctx->audio_status = STATUS_EOF;
            if (!was_eof) {
                MP_VERBOSE(mpctx, "audio EOF reached\n");
                mp_wakeup_core(mpctx);
                encode_lavc_stream_eof(mpctx->encode_lavc_ctx, STREAM_AUDIO);
            }
        }
    }
}
