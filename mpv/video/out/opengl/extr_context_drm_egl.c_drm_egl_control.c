
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ra_ctx {TYPE_1__* vo; struct priv* priv; } ;
struct TYPE_6__ {int msc; int ust; } ;
struct TYPE_5__ {int last_queue_display_time; int skipped_vsyncs; } ;
struct priv {int paused; TYPE_3__ vsync; TYPE_2__ vsync_info; int kms; } ;
struct TYPE_4__ {int want_redraw; } ;





 int VO_NOTIMPL ;
 int VO_TRUE ;
 double kms_get_display_fps (int ) ;

__attribute__((used)) static int drm_egl_control(struct ra_ctx *ctx, int *events, int request,
                           void *arg)
{
    struct priv *p = ctx->priv;
    switch (request) {
    case 130: {
        double fps = kms_get_display_fps(p->kms);
        if (fps <= 0)
            break;
        *(double*)arg = fps;
        return VO_TRUE;
    }
    case 129:
        ctx->vo->want_redraw = 1;
        p->paused = 1;
        return VO_TRUE;
    case 128:
        p->paused = 0;
        p->vsync_info.last_queue_display_time = -1;
        p->vsync_info.skipped_vsyncs = 0;
        p->vsync.ust = 0;
        p->vsync.msc = 0;
        return VO_TRUE;
    }
    return VO_NOTIMPL;
}
