
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct vo {int want_redraw; struct vdpctx* priv; } ;
struct vdpctx {int deint; } ;
struct mp_image {int dummy; } ;







 int VO_EVENT_EXPOSE ;
 int VO_EVENT_RESIZE ;
 int VO_TRUE ;
 int check_preemption (struct vo*) ;
 int checked_resize (struct vo*) ;
 int forget_frames (struct vo*,int) ;
 struct mp_image* get_window_screenshot (struct vo*) ;
 int status_ok (struct vo*) ;
 int vo_event (struct vo*,int) ;
 int vo_x11_control (struct vo*,int*,int ,void*) ;

__attribute__((used)) static int control(struct vo *vo, uint32_t request, void *data)
{
    struct vdpctx *vc = vo->priv;

    check_preemption(vo);

    switch (request) {
    case 128:
        checked_resize(vo);
        return VO_TRUE;
    case 129:
        vo->want_redraw = 1;
        return 1;
    case 131:
        forget_frames(vo, 1);
        return 1;
    case 130:
        if (!status_ok(vo))
            return 0;
        *(struct mp_image **)data = get_window_screenshot(vo);
        return 1;
    case 132:
        *(int *)data = vc->deint;
        return 1;
    }

    int events = 0;
    int r = vo_x11_control(vo, &events, request, data);

    if (events & VO_EVENT_RESIZE) {
        checked_resize(vo);
    } else if (events & VO_EVENT_EXPOSE) {
        vo->want_redraw = 1;
    }
    vo_event(vo, events);

    return r;
}
