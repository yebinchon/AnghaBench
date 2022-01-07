
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct vo {int want_redraw; int params; int config_ok; struct priv* priv; } ;
struct TYPE_4__ {int msc; int ust; } ;
struct TYPE_3__ {int last_queue_display_time; int skipped_vsyncs; } ;
struct priv {int paused; TYPE_2__ vsync; TYPE_1__ vsync_info; int kms; int cur_frame; } ;
struct mp_image {int dummy; } ;







 int VO_NOTIMPL ;
 int VO_TRUE ;
 double kms_get_display_fps (int ) ;
 struct mp_image* mp_image_new_copy (int ) ;
 int reconfig (struct vo*,int ) ;

__attribute__((used)) static int control(struct vo *vo, uint32_t request, void *arg)
{
    struct priv *p = vo->priv;
    switch (request) {
    case 129:
        *(struct mp_image**)arg = mp_image_new_copy(p->cur_frame);
        return VO_TRUE;
    case 128:
        if (vo->config_ok)
            reconfig(vo, vo->params);
        return VO_TRUE;
    case 132: {
        double fps = kms_get_display_fps(p->kms);
        if (fps <= 0)
            break;
        *(double*)arg = fps;
        return VO_TRUE;
    }
    case 131:
        vo->want_redraw = 1;
        p->paused = 1;
        return VO_TRUE;
    case 130:
        p->paused = 0;
        p->vsync_info.last_queue_display_time = -1;
        p->vsync_info.skipped_vsyncs = 0;
        p->vsync.ust = 0;
        p->vsync.msc = 0;
        return VO_TRUE;
    }
    return VO_NOTIMPL;
}
