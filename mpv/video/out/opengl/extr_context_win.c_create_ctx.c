
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ra_ctx {struct priv* priv; } ;
struct priv {int hdc; int context; } ;


 int create_context_wgl_gl3 (struct ra_ctx*) ;
 int create_context_wgl_old (struct ra_ctx*) ;
 int create_dc (struct ra_ctx*) ;
 int wglMakeCurrent (int ,int *) ;

__attribute__((used)) static void create_ctx(void *ptr)
{
    struct ra_ctx *ctx = ptr;
    struct priv *p = ctx->priv;

    if (!create_dc(ctx))
        return;

    create_context_wgl_gl3(ctx);
    if (!p->context)
        create_context_wgl_old(ctx);

    wglMakeCurrent(p->hdc, ((void*)0));
}
