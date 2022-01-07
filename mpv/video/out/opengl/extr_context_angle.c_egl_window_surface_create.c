
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vo {int dummy; } ;
struct ra_ctx {struct vo* vo; struct priv* priv; } ;
struct priv {int flipped; int egl_context; int egl_window; int egl_display; int egl_config; } ;
typedef scalar_t__ EGLint ;


 scalar_t__ EGL_NONE ;
 int EGL_OPTIMAL_SURFACE_ORIENTATION_ANGLE ;
 scalar_t__ EGL_SURFACE_ORIENTATION_ANGLE ;
 scalar_t__ EGL_SURFACE_ORIENTATION_INVERT_Y_ANGLE ;
 int MP_FATAL (struct vo*,char*) ;
 int MP_TARRAY_APPEND (int *,scalar_t__*,int,scalar_t__) ;
 int MP_VERBOSE (struct vo*,char*) ;
 int eglCreateWindowSurface (int ,int ,int ,scalar_t__*) ;
 scalar_t__ eglGetConfigAttrib (int ,int ,int ,scalar_t__*) ;
 int eglMakeCurrent (int ,int ,int ,int ) ;
 int egl_window_surface_destroy (struct ra_ctx*) ;
 int talloc_free (scalar_t__*) ;
 int vo_w32_hwnd (struct vo*) ;

__attribute__((used)) static bool egl_window_surface_create(struct ra_ctx *ctx)
{
    struct priv *p = ctx->priv;
    struct vo *vo = ctx->vo;

    int window_attribs_len = 0;
    EGLint *window_attribs = ((void*)0);

    EGLint flip_val;
    if (eglGetConfigAttrib(p->egl_display, p->egl_config,
                           EGL_OPTIMAL_SURFACE_ORIENTATION_ANGLE, &flip_val))
    {
        if (flip_val == EGL_SURFACE_ORIENTATION_INVERT_Y_ANGLE) {
            MP_TARRAY_APPEND(((void*)0), window_attribs, window_attribs_len,
                EGL_SURFACE_ORIENTATION_ANGLE);
            MP_TARRAY_APPEND(((void*)0), window_attribs, window_attribs_len,
                EGL_SURFACE_ORIENTATION_INVERT_Y_ANGLE);
            p->flipped = 1;
            MP_VERBOSE(vo, "Rendering flipped.\n");
        }
    }

    MP_TARRAY_APPEND(((void*)0), window_attribs, window_attribs_len, EGL_NONE);
    p->egl_window = eglCreateWindowSurface(p->egl_display, p->egl_config,
                                           vo_w32_hwnd(vo), window_attribs);
    talloc_free(window_attribs);
    if (!p->egl_window) {
        MP_FATAL(vo, "Could not create EGL surface!\n");
        goto fail;
    }

    eglMakeCurrent(p->egl_display, p->egl_window, p->egl_window,
                   p->egl_context);
    return 1;
fail:
    egl_window_surface_destroy(ctx);
    return 0;
}
