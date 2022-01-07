
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mp_decoder_wrapper {int try_spdif; } ;
struct ao_chain {int spdif_failed; int spdif_passthrough; TYPE_1__* track; int filter; } ;
struct MPContext {struct ao_chain* ao_chain; int ao; } ;
struct TYPE_2__ {struct mp_decoder_wrapper* dec; } ;


 int MP_ERR (struct MPContext*,char*) ;
 int ao_reset (int ) ;
 int error_on_track (struct MPContext*,TYPE_1__*) ;
 int mp_decoder_wrapper_reinit (struct mp_decoder_wrapper*) ;
 int mp_output_chain_reset_harder (int ) ;
 int mp_wakeup_core (struct MPContext*) ;
 int reinit_audio_filters (struct MPContext*) ;
 int reset_audio_state (struct MPContext*) ;
 int uninit_audio_out (struct MPContext*) ;

void reload_audio_output(struct MPContext *mpctx)
{
    if (!mpctx->ao)
        return;

    ao_reset(mpctx->ao);
    uninit_audio_out(mpctx);
    reinit_audio_filters(mpctx);

    struct ao_chain *ao_c = mpctx->ao_chain;

    if (ao_c) {
        reset_audio_state(mpctx);
        mp_output_chain_reset_harder(ao_c->filter);
    }




    if (ao_c && ao_c->track) {
        struct mp_decoder_wrapper *dec = ao_c->track->dec;
        if (dec && ao_c->spdif_failed) {
            ao_c->spdif_passthrough = 1;
            ao_c->spdif_failed = 0;
            dec->try_spdif = 1;
            if (!mp_decoder_wrapper_reinit(dec)) {
                MP_ERR(mpctx, "Error reinitializing audio.\n");
                error_on_track(mpctx, ao_c->track);
            }
        }
    }

    mp_wakeup_core(mpctx);
}
