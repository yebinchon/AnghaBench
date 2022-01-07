
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ra_ctx {int vo; } ;


 int resize (struct ra_ctx*) ;
 int vo_w32_config (int ) ;

__attribute__((used)) static bool dxgl_reconfig(struct ra_ctx *ctx)
{
    vo_w32_config(ctx->vo);
    resize(ctx);
    return 1;
}
