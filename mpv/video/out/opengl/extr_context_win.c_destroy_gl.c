
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ra_ctx {int vo; struct priv* priv; } ;
struct priv {int * hdc; scalar_t__ context; } ;


 int ReleaseDC (int ,int *) ;
 int * current_wgl_context ;
 int vo_w32_hwnd (int ) ;
 int wglDeleteContext (scalar_t__) ;

__attribute__((used)) static void destroy_gl(void *ptr)
{
    struct ra_ctx *ctx = ptr;
    struct priv *p = ctx->priv;
    if (p->context)
        wglDeleteContext(p->context);
    p->context = 0;
    if (p->hdc)
        ReleaseDC(vo_w32_hwnd(ctx->vo), p->hdc);
    p->hdc = ((void*)0);
    current_wgl_context = ((void*)0);
}
