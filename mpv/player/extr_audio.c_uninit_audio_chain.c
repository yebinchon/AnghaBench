
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct MPContext {int audio_status; int * ao_chain; } ;


 int MPV_EVENT_AUDIO_RECONFIG ;
 int STATUS_EOF ;
 int ao_chain_uninit (int *) ;
 int mp_notify (struct MPContext*,int ,int *) ;

void uninit_audio_chain(struct MPContext *mpctx)
{
    if (mpctx->ao_chain) {
        ao_chain_uninit(mpctx->ao_chain);
        mpctx->ao_chain = ((void*)0);

        mpctx->audio_status = STATUS_EOF;

        mp_notify(mpctx, MPV_EVENT_AUDIO_RECONFIG, ((void*)0));
    }
}
