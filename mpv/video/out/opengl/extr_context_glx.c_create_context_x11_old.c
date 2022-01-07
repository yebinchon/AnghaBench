
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vo {int log; TYPE_1__* x11; } ;
struct ra_ctx {struct vo* vo; struct priv* priv; } ;
struct priv {scalar_t__ context; int vinfo; } ;
struct TYPE_2__ {int screen; int window; int * display; } ;
typedef scalar_t__ GLXContext ;
typedef int GL ;
typedef int Display ;


 int MP_FATAL (struct vo*,char*) ;
 int True ;
 scalar_t__ glXCreateContext (int *,int ,int *,int ) ;
 int glXDestroyContext (int *,scalar_t__) ;
 scalar_t__ glXGetProcAddressARB ;
 int glXMakeCurrent (int *,int ,scalar_t__) ;
 char* glXQueryExtensionsString (int *,int ) ;
 int mpgl_load_functions (int *,void*,char const*,int ) ;

__attribute__((used)) static bool create_context_x11_old(struct ra_ctx *ctx, GL *gl)
{
    struct priv *p = ctx->priv;
    Display *display = ctx->vo->x11->display;
    struct vo *vo = ctx->vo;

    if (p->context)
        return 1;

    if (!p->vinfo) {
        MP_FATAL(vo, "Can't create a legacy GLX context without X visual\n");
        return 0;
    }

    GLXContext new_context = glXCreateContext(display, p->vinfo, ((void*)0), True);
    if (!new_context) {
        MP_FATAL(vo, "Could not create GLX context!\n");
        return 0;
    }

    if (!glXMakeCurrent(display, ctx->vo->x11->window, new_context)) {
        MP_FATAL(vo, "Could not set GLX context!\n");
        glXDestroyContext(display, new_context);
        return 0;
    }

    const char *glxstr = glXQueryExtensionsString(display, ctx->vo->x11->screen);

    mpgl_load_functions(gl, (void *)glXGetProcAddressARB, glxstr, vo->log);

    p->context = new_context;

    return 1;
}
