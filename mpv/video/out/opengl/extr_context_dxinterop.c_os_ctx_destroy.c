
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ra_ctx {struct priv* priv; } ;
struct priv {scalar_t__ os_wnd; scalar_t__ os_dc; scalar_t__ os_ctx; } ;


 int DestroyWindow (scalar_t__) ;
 int ReleaseDC (scalar_t__,scalar_t__) ;
 int wglDeleteContext (scalar_t__) ;
 int wglMakeCurrent (scalar_t__,int *) ;

__attribute__((used)) static void os_ctx_destroy(struct ra_ctx *ctx)
{
    struct priv *p = ctx->priv;

    if (p->os_ctx) {
        wglMakeCurrent(p->os_dc, ((void*)0));
        wglDeleteContext(p->os_ctx);
    }
    if (p->os_dc)
        ReleaseDC(p->os_wnd, p->os_dc);
    if (p->os_wnd)
        DestroyWindow(p->os_wnd);
}
