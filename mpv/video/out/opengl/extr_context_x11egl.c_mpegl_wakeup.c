
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ra_ctx {int vo; } ;


 int vo_x11_wakeup (int ) ;

__attribute__((used)) static void mpegl_wakeup(struct ra_ctx *ctx)
{
    vo_x11_wakeup(ctx->vo);
}
