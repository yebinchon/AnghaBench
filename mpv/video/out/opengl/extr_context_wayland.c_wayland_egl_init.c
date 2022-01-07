
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ra_ctx {int vo; } ;


 int egl_create_context (struct ra_ctx*) ;
 int vo_wayland_init (int ) ;
 int vo_wayland_uninit (int ) ;

__attribute__((used)) static bool wayland_egl_init(struct ra_ctx *ctx)
{
    if (!vo_wayland_init(ctx->vo)) {
        vo_wayland_uninit(ctx->vo);
        return 0;
    }

    return egl_create_context(ctx);
}
