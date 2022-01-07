
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct priv {scalar_t__ ra_ctx; } ;
struct libmpv_gpu_context {struct priv* priv; } ;


 int ra_gl_ctx_uninit (scalar_t__) ;

__attribute__((used)) static void destroy(struct libmpv_gpu_context *ctx)
{
    struct priv *p = ctx->priv;

    if (p->ra_ctx)
        ra_gl_ctx_uninit(p->ra_ctx);
}
