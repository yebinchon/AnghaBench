
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ao_chain {int filter; } ;
struct MPContext {TYPE_1__* opts; struct ao_chain* ao_chain; } ;
struct TYPE_2__ {int af_settings; } ;


 int MPV_EVENT_AUDIO_RECONFIG ;
 int MP_ERR (struct MPContext*,char*) ;
 int assert (struct ao_chain*) ;
 int mp_notify (struct MPContext*,int ,int *) ;
 int mp_output_chain_update_filters (int ,int ) ;
 int update_speed_filters (struct MPContext*) ;

__attribute__((used)) static int recreate_audio_filters(struct MPContext *mpctx)
{
    struct ao_chain *ao_c = mpctx->ao_chain;
    assert(ao_c);

    if (!mp_output_chain_update_filters(ao_c->filter, mpctx->opts->af_settings))
        goto fail;

    update_speed_filters(mpctx);

    mp_notify(mpctx, MPV_EVENT_AUDIO_RECONFIG, ((void*)0));

    return 0;

fail:
    MP_ERR(mpctx, "Audio filter initialized failed!\n");
    return -1;
}
