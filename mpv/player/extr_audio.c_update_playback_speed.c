
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct MPContext {int audio_speed; int speed_factor_a; int video_speed; int speed_factor_v; TYPE_1__* opts; } ;
struct TYPE_2__ {int playback_speed; } ;


 int update_speed_filters (struct MPContext*) ;

void update_playback_speed(struct MPContext *mpctx)
{
    mpctx->audio_speed = mpctx->opts->playback_speed * mpctx->speed_factor_a;
    mpctx->video_speed = mpctx->opts->playback_speed * mpctx->speed_factor_v;

    update_speed_filters(mpctx);
}
