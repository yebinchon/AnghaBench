
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ra_ctx {TYPE_2__* vo; struct priv* priv; } ;
struct priv {scalar_t__ context; scalar_t__ vinfo; } ;
struct TYPE_4__ {TYPE_1__* x11; } ;
struct TYPE_3__ {int * display; } ;
typedef int Display ;


 int None ;
 int XFree (scalar_t__) ;
 int glXDestroyContext (int *,scalar_t__) ;
 int glXMakeCurrent (int *,int ,int *) ;
 int ra_gl_ctx_uninit (struct ra_ctx*) ;
 int vo_x11_uninit (TYPE_2__*) ;

__attribute__((used)) static void glx_uninit(struct ra_ctx *ctx)
{
    struct priv *p = ctx->priv;
    ra_gl_ctx_uninit(ctx);

    if (p->vinfo)
        XFree(p->vinfo);
    if (p->context) {
        Display *display = ctx->vo->x11->display;
        glXMakeCurrent(display, None, ((void*)0));
        glXDestroyContext(display, p->context);
    }

    vo_x11_uninit(ctx->vo);
}
