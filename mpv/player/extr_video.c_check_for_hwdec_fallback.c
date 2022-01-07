
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vo_chain {TYPE_2__* filter; TYPE_1__* track; } ;
struct MPContext {struct vo_chain* vo_chain; } ;
struct TYPE_4__ {int failed_output_conversion; } ;
struct TYPE_3__ {int dec; } ;


 scalar_t__ CONTROL_OK ;
 int VDCTRL_FORCE_HWDEC_FALLBACK ;
 scalar_t__ mp_decoder_wrapper_control (int ,int ,int *) ;
 int mp_output_chain_reset_harder (TYPE_2__*) ;

__attribute__((used)) static bool check_for_hwdec_fallback(struct MPContext *mpctx)
{
    struct vo_chain *vo_c = mpctx->vo_chain;

    if (!vo_c->filter->failed_output_conversion || !vo_c->track)
        return 0;

    if (mp_decoder_wrapper_control(vo_c->track->dec,
                            VDCTRL_FORCE_HWDEC_FALLBACK, ((void*)0)) != CONTROL_OK)
        return 0;

    mp_output_chain_reset_harder(vo_c->filter);
    return 1;
}
