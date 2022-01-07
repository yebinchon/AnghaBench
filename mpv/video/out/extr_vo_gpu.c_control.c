
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct voctrl_performance_data {int dummy; } ;
struct vo_frame {int dummy; } ;
struct vo {int want_redraw; struct gpu_priv* priv; } ;
struct gpu_priv {int events; TYPE_2__* ctx; int renderer; } ;
struct TYPE_5__ {TYPE_1__* fns; } ;
struct TYPE_4__ {int (* control ) (TYPE_2__*,int*,int ,void*) ;int (* reconfig ) (TYPE_2__*) ;} ;
 int VO_EVENT_AMBIENT_LIGHTING_CHANGED ;
 int VO_EVENT_EXPOSE ;
 int VO_EVENT_ICC_PROFILE_CHANGED ;
 int VO_EVENT_RESIZE ;
 int VO_TRUE ;
 int get_and_update_ambient_lighting (struct gpu_priv*) ;
 int get_and_update_icc_profile (struct gpu_priv*) ;
 int gl_video_configure_queue (int ,struct vo*) ;
 int gl_video_perfdata (int ,struct voctrl_performance_data*) ;
 int gl_video_reset (int ) ;
 int gl_video_screenshot (int ,struct vo_frame*,void*) ;
 int gl_video_showing_interpolated_frame (int ) ;
 int request_hwdec_api (struct vo*) ;
 int resize (struct vo*) ;
 int stub1 (TYPE_2__*) ;
 int stub2 (TYPE_2__*,int*,int ,void*) ;
 int talloc_free (struct vo_frame*) ;
 int vo_event (struct vo*,int) ;
 struct vo_frame* vo_get_current_vo_frame (struct vo*) ;

__attribute__((used)) static int control(struct vo *vo, uint32_t request, void *data)
{
    struct gpu_priv *p = vo->priv;

    switch (request) {
    case 129:
        resize(vo);
        return VO_TRUE;
    case 130:
        vo->want_redraw = 1;
        return VO_TRUE;
    case 131: {
        struct vo_frame *frame = vo_get_current_vo_frame(vo);
        if (frame)
            gl_video_screenshot(p->renderer, frame, data);
        talloc_free(frame);
        return 1;
    }
    case 135:
        request_hwdec_api(vo);
        return 1;
    case 128: {
        gl_video_configure_queue(p->renderer, vo);
        get_and_update_icc_profile(p);
        vo->want_redraw = 1;
        return 1;
    }
    case 132:
        gl_video_reset(p->renderer);
        return 1;
    case 134:
        if (gl_video_showing_interpolated_frame(p->renderer))
            vo->want_redraw = 1;
        return 1;
    case 133:
        gl_video_perfdata(p->renderer, (struct voctrl_performance_data *)data);
        return 1;
    case 136:
        p->ctx->fns->reconfig(p->ctx);
        resize(vo);
        return 1;
    }

    int events = 0;
    int r = p->ctx->fns->control(p->ctx, &events, request, data);
    if (events & VO_EVENT_ICC_PROFILE_CHANGED) {
        get_and_update_icc_profile(p);
        vo->want_redraw = 1;
    }
    if (events & VO_EVENT_AMBIENT_LIGHTING_CHANGED) {
        get_and_update_ambient_lighting(p);
        vo->want_redraw = 1;
    }
    events |= p->events;
    p->events = 0;
    if (events & VO_EVENT_RESIZE)
        resize(vo);
    if (events & VO_EVENT_EXPOSE)
        vo->want_redraw = 1;
    vo_event(vo, events);

    return r;
}
