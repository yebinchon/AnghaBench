
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vo {TYPE_2__* driver; } ;
struct MPOpts {scalar_t__ video_sync; int autosync; scalar_t__ untimed; } ;
struct MPContext {scalar_t__ video_status; double time_frame; scalar_t__ audio_status; double delay; double video_speed; int ao; scalar_t__ display_sync_active; TYPE_1__* vo_chain; struct vo* video_out; struct MPOpts* opts; } ;
struct TYPE_4__ {scalar_t__ untimed; } ;
struct TYPE_3__ {scalar_t__ is_coverart; } ;


 int MP_STATS (struct MPContext*,char*,double) ;
 scalar_t__ STATUS_PLAYING ;
 scalar_t__ STATUS_READY ;
 scalar_t__ VS_NONE ;
 double ao_get_delay (int ) ;
 int ao_untimed (int ) ;

__attribute__((used)) static void update_avsync_before_frame(struct MPContext *mpctx)
{
    struct MPOpts *opts = mpctx->opts;
    struct vo *vo = mpctx->video_out;

    if (mpctx->vo_chain->is_coverart || mpctx->video_status < STATUS_READY) {
        mpctx->time_frame = 0;
    } else if (mpctx->display_sync_active || opts->video_sync == VS_NONE) {

    } else if (mpctx->audio_status == STATUS_PLAYING &&
               mpctx->video_status == STATUS_PLAYING &&
               !ao_untimed(mpctx->ao))
    {
        double buffered_audio = ao_get_delay(mpctx->ao);

        double predicted = mpctx->delay / mpctx->video_speed +
                           mpctx->time_frame;
        double difference = buffered_audio - predicted;
        MP_STATS(mpctx, "value %f audio-diff", difference);

        if (opts->autosync) {







            buffered_audio = predicted + difference / opts->autosync;
        }

        mpctx->time_frame = buffered_audio - mpctx->delay / mpctx->video_speed;
    } else {







        if (mpctx->time_frame < -0.2 || opts->untimed || vo->driver->untimed)
            mpctx->time_frame = 0;
    }
}
