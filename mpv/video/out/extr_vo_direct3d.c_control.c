
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint32_t ;
struct vo {int want_redraw; TYPE_2__* priv; } ;
struct mp_image {int dummy; } ;
struct TYPE_8__ {TYPE_1__* vo; } ;
typedef TYPE_2__ d3d_priv ;
struct TYPE_7__ {int want_redraw; } ;





 int VO_EVENT_EXPOSE ;
 int VO_EVENT_RESIZE ;
 int VO_TRUE ;
 int calc_fs_rect (TYPE_2__*) ;
 int d3d_draw_frame (TYPE_2__*) ;
 struct mp_image* get_window_screenshot (TYPE_2__*) ;
 int resize_d3d (TYPE_2__*) ;
 int vo_event (struct vo*,int) ;
 int vo_w32_control (struct vo*,int*,int ,void*) ;

__attribute__((used)) static int control(struct vo *vo, uint32_t request, void *data)
{
    d3d_priv *priv = vo->priv;

    switch (request) {
    case 130:
        d3d_draw_frame(priv);
        return VO_TRUE;
    case 128:
        calc_fs_rect(priv);
        priv->vo->want_redraw = 1;
        return VO_TRUE;
    case 129:
        *(struct mp_image **)data = get_window_screenshot(priv);
        return VO_TRUE;
    }

    int events = 0;
    int r = vo_w32_control(vo, &events, request, data);

    if (events & VO_EVENT_RESIZE)
        resize_d3d(priv);

    if (events & VO_EVENT_EXPOSE)
        vo->want_redraw = 1;

    vo_event(vo, events);

    return r;
}
