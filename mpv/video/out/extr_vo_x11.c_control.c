
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct vo {scalar_t__ config_ok; struct priv* priv; } ;
struct priv {int original_image; } ;




 int VO_EVENT_EXPOSE ;
 int VO_EVENT_RESIZE ;
 int VO_TRUE ;
 int draw_image (struct vo*,int ) ;
 int resize (struct vo*) ;
 int vo_event (struct vo*,int) ;
 int vo_x11_control (struct vo*,int*,int ,void*) ;

__attribute__((used)) static int control(struct vo *vo, uint32_t request, void *data)
{
    struct priv *p = vo->priv;
    switch (request) {
    case 128:
        if (vo->config_ok)
            resize(vo);
        return VO_TRUE;
    case 129:
        draw_image(vo, p->original_image);
        return 1;
    }

    int events = 0;
    int r = vo_x11_control(vo, &events, request, data);
    if (vo->config_ok && (events & (VO_EVENT_EXPOSE | VO_EVENT_RESIZE)))
        resize(vo);
    vo_event(vo, events);
    return r;
}
