
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ra_ctx {int vo; struct priv* priv; } ;
struct priv {int egl_window; } ;


 int egl_create_window (struct ra_ctx*) ;
 int vo_wayland_reconfig (int ) ;

__attribute__((used)) static bool wayland_egl_reconfig(struct ra_ctx *ctx)
{
    struct priv *p = ctx->priv;

    if (!vo_wayland_reconfig(ctx->vo))
        return 0;

    if (!p->egl_window)
        egl_create_window(ctx);

    return 1;
}
