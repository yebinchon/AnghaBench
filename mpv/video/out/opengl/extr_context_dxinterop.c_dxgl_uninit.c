
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ra_ctx {int vo; } ;


 int DwmEnableMMCSS (int ) ;
 int FALSE ;
 int d3d_destroy (struct ra_ctx*) ;
 int d3d_size_dependent_destroy (struct ra_ctx*) ;
 int os_ctx_destroy (struct ra_ctx*) ;
 int pump_message_loop () ;
 int ra_gl_ctx_uninit (struct ra_ctx*) ;
 int vo_w32_uninit (int ) ;

__attribute__((used)) static void dxgl_uninit(struct ra_ctx *ctx)
{
    ra_gl_ctx_uninit(ctx);
    d3d_size_dependent_destroy(ctx);
    d3d_destroy(ctx);
    os_ctx_destroy(ctx);
    vo_w32_uninit(ctx->vo);
    DwmEnableMMCSS(FALSE);
    pump_message_loop();
}
