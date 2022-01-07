
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mp_chmap {int dummy; } ;
struct MPOpts {double audio_delay; int initial_audio_sync; } ;
struct MPContext {scalar_t__ audio_status; int audio_speed; scalar_t__ video_status; double video_pts; double hrseek_pts; double playback_pts; scalar_t__ hrseek_active; TYPE_2__* vo_chain; TYPE_1__* ao_chain; int ao; struct MPOpts* opts; } ;
struct TYPE_4__ {int is_coverart; } ;
struct TYPE_3__ {int ao_buffer; } ;


 double MPCLAMP (double,int,int) ;
 double MP_NOPTS_VALUE ;
 int MP_WARN (struct MPContext*,char*) ;
 scalar_t__ STATUS_EOF ;
 void* STATUS_FILLING ;
 scalar_t__ STATUS_READY ;
 scalar_t__ STATUS_SYNCING ;
 int af_format_sample_alignment (int) ;
 int ao_get_format (int ,int*,int*,struct mp_chmap*) ;
 int mp_audio_buffer_samples (int ) ;
 double written_audio_pts (struct MPContext*) ;

__attribute__((used)) static bool get_sync_samples(struct MPContext *mpctx, int *skip)
{
    struct MPOpts *opts = mpctx->opts;
    *skip = 0;

    if (mpctx->audio_status != STATUS_SYNCING)
        return 1;

    int ao_rate;
    int ao_format;
    struct mp_chmap ao_channels;
    ao_get_format(mpctx->ao, &ao_rate, &ao_format, &ao_channels);

    double play_samplerate = ao_rate / mpctx->audio_speed;

    if (!opts->initial_audio_sync) {
        mpctx->audio_status = STATUS_FILLING;
        return 1;
    }

    double written_pts = written_audio_pts(mpctx);
    if (written_pts == MP_NOPTS_VALUE &&
        !mp_audio_buffer_samples(mpctx->ao_chain->ao_buffer))
        return 0;

    bool sync_to_video = mpctx->vo_chain && !mpctx->vo_chain->is_coverart &&
                         mpctx->video_status != STATUS_EOF;

    double sync_pts = MP_NOPTS_VALUE;
    if (sync_to_video) {
        if (mpctx->video_status < STATUS_READY)
            return 0;
        if (mpctx->video_pts != MP_NOPTS_VALUE)
            sync_pts = mpctx->video_pts - opts->audio_delay;
    } else if (mpctx->hrseek_active) {
        sync_pts = mpctx->hrseek_pts;
    } else {

        sync_pts = mpctx->playback_pts;
    }
    if (sync_pts == MP_NOPTS_VALUE) {
        mpctx->audio_status = STATUS_FILLING;
        return 1;
    }

    double ptsdiff = written_pts - sync_pts;


    if (written_pts == MP_NOPTS_VALUE) {
        MP_WARN(mpctx, "Failed audio resync.\n");
        mpctx->audio_status = STATUS_FILLING;
        return 1;
    }
    ptsdiff = MPCLAMP(ptsdiff, -3600, 3600);

    int align = af_format_sample_alignment(ao_format);
    *skip = (int)(-ptsdiff * play_samplerate) / align * align;
    return 1;
}
