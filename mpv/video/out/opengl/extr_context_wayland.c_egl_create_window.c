
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vo_wayland_state {int geometry; int surface; } ;
struct ra_ctx {TYPE_1__* vo; struct priv* priv; } ;
struct priv {int egl_display; int egl_context; int egl_surface; int egl_window; int egl_config; } ;
struct TYPE_2__ {struct vo_wayland_state* wl; } ;


 int eglCreateWindowSurface (int ,int ,int ,int *) ;
 int eglMakeCurrent (int ,int ,int ,int ) ;
 int eglSwapInterval (int ,int ) ;
 int mp_rect_h (int ) ;
 int mp_rect_w (int ) ;
 int wl_egl_window_create (int ,int ,int ) ;

__attribute__((used)) static void egl_create_window(struct ra_ctx *ctx)
{
    struct priv *p = ctx->priv;
    struct vo_wayland_state *wl = ctx->vo->wl;

    p->egl_window = wl_egl_window_create(wl->surface, mp_rect_w(wl->geometry),
                                         mp_rect_h(wl->geometry));

    p->egl_surface = eglCreateWindowSurface(p->egl_display, p->egl_config,
                                            p->egl_window, ((void*)0));

    eglMakeCurrent(p->egl_display, p->egl_surface, p->egl_surface, p->egl_context);

    eglSwapInterval(p->egl_display, 0);
}
