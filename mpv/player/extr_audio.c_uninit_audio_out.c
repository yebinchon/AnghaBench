
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct MPContext {scalar_t__ stop_play; int ao_filter_fmt; int * ao; TYPE_1__* opts; } ;
struct TYPE_2__ {scalar_t__ gapless_audio; } ;


 scalar_t__ AT_END_OF_FILE ;
 int MPV_EVENT_AUDIO_RECONFIG ;
 int TA_FREEP (int *) ;
 int ao_drain (int *) ;
 int ao_uninit (int *) ;
 int mp_notify (struct MPContext*,int ,int *) ;

void uninit_audio_out(struct MPContext *mpctx)
{
    if (mpctx->ao) {

        if (mpctx->opts->gapless_audio || mpctx->stop_play == AT_END_OF_FILE)
            ao_drain(mpctx->ao);
        ao_uninit(mpctx->ao);

        mp_notify(mpctx, MPV_EVENT_AUDIO_RECONFIG, ((void*)0));
    }
    mpctx->ao = ((void*)0);
    TA_FREEP(&mpctx->ao_filter_fmt);
}
