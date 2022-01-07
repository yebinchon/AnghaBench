
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ra_ctx {int vo; struct priv* priv; } ;
struct priv {int (* Flush ) () ;} ;


 int stub1 () ;
 int vo_cocoa_swap_buffers (int ) ;

__attribute__((used)) static void cocoa_swap_buffers(struct ra_ctx *ctx)
{
    struct priv *p = ctx->priv;
    vo_cocoa_swap_buffers(ctx->vo);
    p->Flush();
}
