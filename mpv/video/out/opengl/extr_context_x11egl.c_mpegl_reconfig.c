
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ra_ctx {int vo; } ;


 int resize (struct ra_ctx*) ;
 int vo_x11_config_vo_window (int ) ;

__attribute__((used)) static bool mpegl_reconfig(struct ra_ctx *ctx)
{
    vo_x11_config_vo_window(ctx->vo);
    resize(ctx);
    return 1;
}
