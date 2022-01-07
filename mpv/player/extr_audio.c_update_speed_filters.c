
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ao_chain {int filter; } ;
struct MPContext {double speed_factor_a; TYPE_1__* opts; struct ao_chain* ao_chain; } ;
struct TYPE_2__ {double playback_speed; int pitch_correction; } ;


 int mp_output_chain_set_audio_speed (int ,double,double) ;

__attribute__((used)) static void update_speed_filters(struct MPContext *mpctx)
{
    struct ao_chain *ao_c = mpctx->ao_chain;
    if (!ao_c)
        return;

    double speed = mpctx->opts->playback_speed;
    double resample = mpctx->speed_factor_a;

    if (!mpctx->opts->pitch_correction) {
        resample *= speed;
        speed = 1.0;
    }

    mp_output_chain_set_audio_speed(ao_c->filter, speed, resample);
}
