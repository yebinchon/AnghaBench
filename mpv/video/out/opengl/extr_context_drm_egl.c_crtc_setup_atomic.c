
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct ra_ctx {int vo; struct priv* priv; } ;
struct TYPE_7__ {int width; int height; } ;
struct priv {TYPE_4__* kms; TYPE_2__ draw_surface_size; TYPE_1__* fb; } ;
struct drm_atomic_context {int draw_plane; int crtc; int connector; } ;
typedef int drmModeAtomicReqPtr ;
struct TYPE_8__ {int hdisplay; int vdisplay; } ;
struct TYPE_10__ {int blob_id; TYPE_3__ mode; } ;
struct TYPE_9__ {int crtc_id; int fd; TYPE_5__ mode; struct drm_atomic_context* atomic_context; } ;
struct TYPE_6__ {int id; } ;


 int DRM_MODE_ATOMIC_ALLOW_MODESET ;
 int MP_ERR (int ,char*,...) ;
 int MP_WARN (int ,char*) ;
 int drmModeAtomicAlloc () ;
 int drmModeAtomicCommit (int ,int ,int ,int *) ;
 int drmModeAtomicFree (int ) ;
 int drm_atomic_save_old_state (struct drm_atomic_context*) ;
 int drm_mode_ensure_blob (int ,TYPE_5__*) ;
 scalar_t__ drm_object_set_property (int ,int ,char*,int) ;

__attribute__((used)) static bool crtc_setup_atomic(struct ra_ctx *ctx)
{
    struct priv *p = ctx->priv;
    struct drm_atomic_context *atomic_ctx = p->kms->atomic_context;

    if (!drm_atomic_save_old_state(atomic_ctx)) {
        MP_WARN(ctx->vo, "Failed to save old DRM atomic state\n");
    }

    drmModeAtomicReqPtr request = drmModeAtomicAlloc();
    if (!request) {
        MP_ERR(ctx->vo, "Failed to allocate drm atomic request\n");
        return 0;
    }

    if (drm_object_set_property(request, atomic_ctx->connector, "CRTC_ID", p->kms->crtc_id) < 0) {
        MP_ERR(ctx->vo, "Could not set CRTC_ID on connector\n");
        return 0;
    }

    if (!drm_mode_ensure_blob(p->kms->fd, &p->kms->mode)) {
        MP_ERR(ctx->vo, "Failed to create DRM mode blob\n");
        goto err;
    }
    if (drm_object_set_property(request, atomic_ctx->crtc, "MODE_ID", p->kms->mode.blob_id) < 0) {
        MP_ERR(ctx->vo, "Could not set MODE_ID on crtc\n");
        goto err;
    }
    if (drm_object_set_property(request, atomic_ctx->crtc, "ACTIVE", 1) < 0) {
        MP_ERR(ctx->vo, "Could not set ACTIVE on crtc\n");
        goto err;
    }

    drm_object_set_property(request, atomic_ctx->draw_plane, "FB_ID", p->fb->id);
    drm_object_set_property(request, atomic_ctx->draw_plane, "CRTC_ID", p->kms->crtc_id);
    drm_object_set_property(request, atomic_ctx->draw_plane, "SRC_X", 0);
    drm_object_set_property(request, atomic_ctx->draw_plane, "SRC_Y", 0);
    drm_object_set_property(request, atomic_ctx->draw_plane, "SRC_W", p->draw_surface_size.width << 16);
    drm_object_set_property(request, atomic_ctx->draw_plane, "SRC_H", p->draw_surface_size.height << 16);
    drm_object_set_property(request, atomic_ctx->draw_plane, "CRTC_X", 0);
    drm_object_set_property(request, atomic_ctx->draw_plane, "CRTC_Y", 0);
    drm_object_set_property(request, atomic_ctx->draw_plane, "CRTC_W", p->kms->mode.mode.hdisplay);
    drm_object_set_property(request, atomic_ctx->draw_plane, "CRTC_H", p->kms->mode.mode.vdisplay);

    int ret = drmModeAtomicCommit(p->kms->fd, request, DRM_MODE_ATOMIC_ALLOW_MODESET, ((void*)0));
    if (ret)
        MP_ERR(ctx->vo, "Failed to commit ModeSetting atomic request (%d)\n", ret);

    drmModeAtomicFree(request);
    return ret == 0;

  err:
    drmModeAtomicFree(request);
    return 0;
}
