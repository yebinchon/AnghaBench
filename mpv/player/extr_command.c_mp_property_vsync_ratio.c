
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct m_property {int dummy; } ;
struct TYPE_4__ {int num_past_frames; TYPE_1__* past_frames; int display_sync_active; int vo_chain; } ;
struct TYPE_3__ {int num_vsyncs; } ;
typedef TYPE_2__ MPContext ;


 int M_PROPERTY_UNAVAILABLE ;
 int m_property_double_ro (int,void*,int) ;

__attribute__((used)) static int mp_property_vsync_ratio(void *ctx, struct m_property *prop,
                                   int action, void *arg)
{
    MPContext *mpctx = ctx;
    if (!mpctx->vo_chain || !mpctx->display_sync_active)
        return M_PROPERTY_UNAVAILABLE;

    int vsyncs = 0, frames = 0;
    for (int n = 0; n < mpctx->num_past_frames; n++) {
        int vsync = mpctx->past_frames[n].num_vsyncs;
        if (vsync < 0)
            break;
        vsyncs += vsync;
        frames += 1;
    }

    if (!frames)
        return M_PROPERTY_UNAVAILABLE;

    return m_property_double_ro(action, arg, vsyncs / (double)frames);
}
