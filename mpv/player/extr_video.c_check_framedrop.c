
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct vo_chain {TYPE_3__* track; TYPE_1__* filter; } ;
struct MPOpts {int frame_dropping; } ;
struct MPContext {scalar_t__ video_status; scalar_t__ audio_status; double last_av_difference; int ao; int paused; struct MPOpts* opts; } ;
struct TYPE_6__ {TYPE_2__* dec; } ;
struct TYPE_5__ {int attempt_framedrops; } ;
struct TYPE_4__ {float container_fps; } ;


 int MPCLAMP (double,int ,int) ;
 scalar_t__ STATUS_PLAYING ;
 int ao_untimed (int ) ;

__attribute__((used)) static void check_framedrop(struct MPContext *mpctx, struct vo_chain *vo_c)
{
    struct MPOpts *opts = mpctx->opts;

    if (mpctx->video_status == STATUS_PLAYING && !mpctx->paused &&
        mpctx->audio_status == STATUS_PLAYING && !ao_untimed(mpctx->ao) &&
        vo_c->track && vo_c->track->dec && (opts->frame_dropping & 2))
    {
        float fps = vo_c->filter->container_fps;

        if (fps <= 20 || fps >= 500)
            return;
        double frame_time = 1.0 / fps;

        vo_c->track->dec->attempt_framedrops =
            MPCLAMP((mpctx->last_av_difference - 0.010) / frame_time, 0, 100);
    }
}
