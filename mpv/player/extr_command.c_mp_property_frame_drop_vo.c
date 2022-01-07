
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct m_property {int dummy; } ;
struct TYPE_2__ {int video_out; int vo_chain; } ;
typedef TYPE_1__ MPContext ;


 int M_PROPERTY_UNAVAILABLE ;
 int m_property_int_ro (int,void*,int ) ;
 int vo_get_drop_count (int ) ;

__attribute__((used)) static int mp_property_frame_drop_vo(void *ctx, struct m_property *prop,
                                     int action, void *arg)
{
    MPContext *mpctx = ctx;
    if (!mpctx->vo_chain)
        return M_PROPERTY_UNAVAILABLE;

    return m_property_int_ro(action, arg, vo_get_drop_count(mpctx->video_out));
}
