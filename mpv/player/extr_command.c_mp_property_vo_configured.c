
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct m_property {int dummy; } ;
struct TYPE_4__ {TYPE_1__* video_out; } ;
struct TYPE_3__ {scalar_t__ config_ok; } ;
typedef TYPE_2__ MPContext ;


 int m_property_flag_ro (int,void*,int) ;

__attribute__((used)) static int mp_property_vo_configured(void *ctx, struct m_property *prop,
                                     int action, void *arg)
{
    MPContext *mpctx = ctx;
    return m_property_flag_ro(action, arg,
                        mpctx->video_out && mpctx->video_out->config_ok);
}
