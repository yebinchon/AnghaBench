
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct xvctx {int original_image; } ;
struct vo {struct xvctx* priv; } ;




 int VO_EVENT_EXPOSE ;
 int VO_EVENT_RESIZE ;
 int VO_TRUE ;
 int draw_image (struct vo*,int ) ;
 int resize (struct vo*) ;
 int vo_event (struct vo*,int) ;
 int vo_x11_control (struct vo*,int*,int ,void*) ;

__attribute__((used)) static int control(struct vo *vo, uint32_t request, void *data)
{
    struct xvctx *ctx = vo->priv;
    switch (request) {
    case 128:
        resize(vo);
        return VO_TRUE;
    case 129:
        draw_image(vo, ctx->original_image);
        return 1;
    }
    int events = 0;
    int r = vo_x11_control(vo, &events, request, data);
    if (events & (VO_EVENT_EXPOSE | VO_EVENT_RESIZE))
        resize(vo);
    vo_event(vo, events);
    return r;
}
