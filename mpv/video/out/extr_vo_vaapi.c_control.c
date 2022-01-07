
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct vo {int want_redraw; struct priv* priv; } ;
struct priv {int visible_surface; int output_surface; } ;




 int VO_EVENT_EXPOSE ;
 int VO_EVENT_RESIZE ;
 int VO_TRUE ;
 int draw_osd (struct vo*) ;
 int resize (struct priv*) ;
 int vo_event (struct vo*,int) ;
 int vo_x11_control (struct vo*,int*,int ,void*) ;

__attribute__((used)) static int control(struct vo *vo, uint32_t request, void *data)
{
    struct priv *p = vo->priv;

    switch (request) {
    case 129:
        p->output_surface = p->visible_surface;
        draw_osd(vo);
        return 1;
    case 128:
        resize(p);
        return VO_TRUE;
    }

    int events = 0;
    int r = vo_x11_control(vo, &events, request, data);
    if (events & VO_EVENT_RESIZE)
        resize(p);
    if (events & VO_EVENT_EXPOSE)
        vo->want_redraw = 1;
    vo_event(vo, events);
    return r;
}
