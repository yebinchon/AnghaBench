
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ao_chain {int ao; } ;
struct MPOpts {double softvol_volume; int softvol_mute; } ;
struct MPContext {struct ao_chain* ao_chain; struct MPOpts* opts; } ;


 float MPMAX (double,int ) ;
 int ao_set_gain (int ,float) ;
 float compute_replaygain (struct MPContext*) ;
 float pow (float,int) ;

void audio_update_volume(struct MPContext *mpctx)
{
    struct MPOpts *opts = mpctx->opts;
    struct ao_chain *ao_c = mpctx->ao_chain;
    if (!ao_c || !ao_c->ao)
        return;

    float gain = MPMAX(opts->softvol_volume / 100.0, 0);
    gain = pow(gain, 3);
    gain *= compute_replaygain(mpctx);
    if (opts->softvol_mute == 1)
        gain = 0.0;

    ao_set_gain(ao_c->ao, gain);
}
