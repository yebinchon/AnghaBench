
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct ra_ctx {int vo; struct priv* priv; } ;
struct TYPE_7__ {int render_fd; } ;
struct TYPE_6__ {int context; int display; int surface; } ;
struct TYPE_5__ {int device; int surface; scalar_t__ num_bos; } ;
struct priv {TYPE_4__* kms; TYPE_3__ drm_params; TYPE_2__ egl; TYPE_1__ gbm; int vt_switcher; scalar_t__ vt_switcher_active; } ;
struct drm_atomic_context {int request; } ;
struct TYPE_8__ {int fd; struct drm_atomic_context* atomic_context; } ;


 int EGL_NO_CONTEXT ;
 int EGL_NO_SURFACE ;
 int MP_ERR (int ,char*,int) ;
 int close (int ) ;
 int crtc_release (struct ra_ctx*) ;
 int drmModeAtomicCommit (int ,int ,int ,int *) ;
 int drmModeAtomicFree (int ) ;
 int eglDestroyContext (int ,int ) ;
 int eglDestroySurface (int ,int ) ;
 int eglMakeCurrent (int ,int ,int ,int ) ;
 int eglTerminate (int ) ;
 int gbm_device_destroy (int ) ;
 int gbm_surface_destroy (int ) ;
 int kms_destroy (TYPE_4__*) ;
 int ra_gl_ctx_uninit (struct ra_ctx*) ;
 int swapchain_step (struct ra_ctx*) ;
 int vt_switcher_destroy (int *) ;

__attribute__((used)) static void drm_egl_uninit(struct ra_ctx *ctx)
{
    struct priv *p = ctx->priv;
    struct drm_atomic_context *atomic_ctx = p->kms->atomic_context;

    if (atomic_ctx) {
        int ret = drmModeAtomicCommit(p->kms->fd, atomic_ctx->request, 0, ((void*)0));
        if (ret)
            MP_ERR(ctx->vo, "Failed to commit atomic request (%d)\n", ret);
        drmModeAtomicFree(atomic_ctx->request);
    }

    ra_gl_ctx_uninit(ctx);

    crtc_release(ctx);
    if (p->vt_switcher_active)
        vt_switcher_destroy(&p->vt_switcher);



    while (p->gbm.num_bos) {
        swapchain_step(ctx);
    }

    eglMakeCurrent(p->egl.display, EGL_NO_SURFACE, EGL_NO_SURFACE,
                   EGL_NO_CONTEXT);
    eglDestroyContext(p->egl.display, p->egl.context);
    eglDestroySurface(p->egl.display, p->egl.surface);
    gbm_surface_destroy(p->gbm.surface);
    eglTerminate(p->egl.display);
    gbm_device_destroy(p->gbm.device);
    p->egl.context = EGL_NO_CONTEXT;
    eglDestroyContext(p->egl.display, p->egl.context);

    close(p->drm_params.render_fd);

    if (p->kms) {
        kms_destroy(p->kms);
        p->kms = 0;
    }
}
