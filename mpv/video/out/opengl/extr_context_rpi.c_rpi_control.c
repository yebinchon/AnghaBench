
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ra_ctx {struct priv* priv; } ;
struct priv {double display_fps; int reload_display; } ;
struct mp_image {int dummy; } ;


 int MP_WARN (struct ra_ctx*,char*) ;




 int VO_NOTIMPL ;
 int VO_TRUE ;
 int atomic_fetch_and (int *,int ) ;
 int recreate_dispmanx (struct ra_ctx*) ;
 struct mp_image* take_screenshot (struct ra_ctx*) ;

__attribute__((used)) static int rpi_control(struct ra_ctx *ctx, int *events, int request, void *arg)
{
    struct priv *p = ctx->priv;

    switch (request) {
    case 128:
        *(struct mp_image **)arg = take_screenshot(ctx);
        return VO_TRUE;
    case 130:
        recreate_dispmanx(ctx);
        return VO_TRUE;
    case 131:
        if (atomic_fetch_and(&p->reload_display, 0)) {
            MP_WARN(ctx, "Recovering from display mode switch...\n");
            recreate_dispmanx(ctx);
        }
        return VO_TRUE;
    case 129:
        *(double *)arg = p->display_fps;
        return VO_TRUE;
    }

    return VO_NOTIMPL;
}
