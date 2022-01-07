
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ra_ctx {int vo; struct priv* priv; } ;
struct priv {TYPE_1__* kms; } ;
struct drm_atomic_context {int dummy; } ;
typedef int drmModeAtomicReqPtr ;
struct TYPE_2__ {int fd; struct drm_atomic_context* atomic_context; } ;


 int DRM_MODE_ATOMIC_ALLOW_MODESET ;
 int MP_ERR (int ,char*) ;
 int MP_WARN (int ,char*,...) ;
 int drmModeAtomicAlloc () ;
 int drmModeAtomicCommit (int ,int ,int ,int *) ;
 int drmModeAtomicFree (int ) ;
 int drm_atomic_restore_old_state (int ,struct drm_atomic_context*) ;

__attribute__((used)) static bool crtc_release_atomic(struct ra_ctx *ctx)
{
    struct priv *p = ctx->priv;

    struct drm_atomic_context *atomic_ctx = p->kms->atomic_context;
    drmModeAtomicReqPtr request = drmModeAtomicAlloc();
    if (!request) {
        MP_ERR(ctx->vo, "Failed to allocate drm atomic request\n");
        return 0;
    }

    if (!drm_atomic_restore_old_state(request, atomic_ctx)) {
        MP_WARN(ctx->vo, "Got error while restoring old state\n");
    }

    int ret = drmModeAtomicCommit(p->kms->fd, request, DRM_MODE_ATOMIC_ALLOW_MODESET, ((void*)0));

    if (ret)
        MP_WARN(ctx->vo, "Failed to commit ModeSetting atomic request (%d)\n", ret);

    drmModeAtomicFree(request);
    return ret == 0;
}
