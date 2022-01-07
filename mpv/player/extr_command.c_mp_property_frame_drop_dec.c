
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct mp_decoder_wrapper {int dropped_frames; } ;
struct m_property {int dummy; } ;
struct TYPE_6__ {TYPE_2__* vo_chain; } ;
struct TYPE_5__ {TYPE_1__* track; } ;
struct TYPE_4__ {struct mp_decoder_wrapper* dec; } ;
typedef TYPE_3__ MPContext ;


 int M_PROPERTY_UNAVAILABLE ;
 int m_property_int_ro (int,void*,int ) ;

__attribute__((used)) static int mp_property_frame_drop_dec(void *ctx, struct m_property *prop,
                                      int action, void *arg)
{
    MPContext *mpctx = ctx;
    struct mp_decoder_wrapper *dec = mpctx->vo_chain && mpctx->vo_chain->track
        ? mpctx->vo_chain->track->dec : ((void*)0);
    if (!dec)
        return M_PROPERTY_UNAVAILABLE;

    return m_property_int_ro(action, arg, dec->dropped_frames);
}
