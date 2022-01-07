
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vo {int dummy; } ;
struct m_property {int dummy; } ;
struct TYPE_2__ {struct vo* video_out; } ;
typedef TYPE_1__ MPContext ;


 int M_PROPERTY_UNAVAILABLE ;
 int m_property_double_ro (int,void*,double) ;
 double vo_get_estimated_vsync_interval (struct vo*) ;

__attribute__((used)) static int mp_property_estimated_display_fps(void *ctx, struct m_property *prop,
                                             int action, void *arg)
{
    MPContext *mpctx = ctx;
    struct vo *vo = mpctx->video_out;
    if (!vo)
        return M_PROPERTY_UNAVAILABLE;
    double interval = vo_get_estimated_vsync_interval(vo);
    if (interval <= 0)
        return M_PROPERTY_UNAVAILABLE;
    return m_property_double_ro(action, arg, 1.0 / interval);
}
