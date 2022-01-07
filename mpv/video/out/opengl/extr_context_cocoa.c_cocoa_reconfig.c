
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ra_ctx {int vo; } ;


 int resize (struct ra_ctx*) ;
 int vo_cocoa_config_window (int ) ;

__attribute__((used)) static bool cocoa_reconfig(struct ra_ctx *ctx)
{
    vo_cocoa_config_window(ctx->vo);
    resize(ctx);
    return 1;
}
