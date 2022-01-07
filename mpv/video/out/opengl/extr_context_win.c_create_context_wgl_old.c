
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ra_ctx {int vo; struct priv* priv; } ;
struct priv {scalar_t__ context; int hdc; } ;
typedef scalar_t__ HGLRC ;
typedef int HDC ;


 int MP_FATAL (int ,char*) ;
 scalar_t__ wglCreateContext (int ) ;
 int wglDeleteContext (scalar_t__) ;
 int wglMakeCurrent (int ,scalar_t__) ;

__attribute__((used)) static bool create_context_wgl_old(struct ra_ctx *ctx)
{
    struct priv *p = ctx->priv;

    HDC windc = p->hdc;
    bool res = 0;

    HGLRC context = wglCreateContext(windc);
    if (!context) {
        MP_FATAL(ctx->vo, "Could not create GL context!\n");
        return res;
    }

    if (!wglMakeCurrent(windc, context)) {
        MP_FATAL(ctx->vo, "Could not set GL context!\n");
        wglDeleteContext(context);
        return res;
    }

    p->context = context;
    return 1;
}
