#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct ra_ctx {int /*<<< orphan*/  vo; struct priv* priv; } ;
struct TYPE_7__ {int width; int height; } ;
struct priv {TYPE_4__* kms; TYPE_2__ draw_surface_size; TYPE_1__* fb; } ;
struct drm_atomic_context {int /*<<< orphan*/  draw_plane; int /*<<< orphan*/  crtc; int /*<<< orphan*/  connector; } ;
typedef  int /*<<< orphan*/  drmModeAtomicReqPtr ;
struct TYPE_8__ {int hdisplay; int vdisplay; } ;
struct TYPE_10__ {int blob_id; TYPE_3__ mode; } ;
struct TYPE_9__ {int crtc_id; int /*<<< orphan*/  fd; TYPE_5__ mode; struct drm_atomic_context* atomic_context; } ;
struct TYPE_6__ {int id; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRM_MODE_ATOMIC_ALLOW_MODESET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_atomic_context*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_5__*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static bool FUNC8(struct ra_ctx *ctx)
{
    struct priv *p = ctx->priv;
    struct drm_atomic_context *atomic_ctx = p->kms->atomic_context;

    if (!FUNC5(atomic_ctx)) {
        FUNC1(ctx->vo, "Failed to save old DRM atomic state\n");
    }

    drmModeAtomicReqPtr request = FUNC2();
    if (!request) {
        FUNC0(ctx->vo, "Failed to allocate drm atomic request\n");
        return false;
    }

    if (FUNC7(request, atomic_ctx->connector, "CRTC_ID", p->kms->crtc_id) < 0) {
        FUNC0(ctx->vo, "Could not set CRTC_ID on connector\n");
        return false;
    }

    if (!FUNC6(p->kms->fd, &p->kms->mode)) {
        FUNC0(ctx->vo, "Failed to create DRM mode blob\n");
        goto err;
    }
    if (FUNC7(request, atomic_ctx->crtc, "MODE_ID", p->kms->mode.blob_id) < 0) {
        FUNC0(ctx->vo, "Could not set MODE_ID on crtc\n");
        goto err;
    }
    if (FUNC7(request, atomic_ctx->crtc, "ACTIVE", 1) < 0) {
        FUNC0(ctx->vo, "Could not set ACTIVE on crtc\n");
        goto err;
    }

    FUNC7(request, atomic_ctx->draw_plane, "FB_ID", p->fb->id);
    FUNC7(request, atomic_ctx->draw_plane, "CRTC_ID", p->kms->crtc_id);
    FUNC7(request, atomic_ctx->draw_plane, "SRC_X",   0);
    FUNC7(request, atomic_ctx->draw_plane, "SRC_Y",   0);
    FUNC7(request, atomic_ctx->draw_plane, "SRC_W",   p->draw_surface_size.width << 16);
    FUNC7(request, atomic_ctx->draw_plane, "SRC_H",   p->draw_surface_size.height << 16);
    FUNC7(request, atomic_ctx->draw_plane, "CRTC_X",  0);
    FUNC7(request, atomic_ctx->draw_plane, "CRTC_Y",  0);
    FUNC7(request, atomic_ctx->draw_plane, "CRTC_W",  p->kms->mode.mode.hdisplay);
    FUNC7(request, atomic_ctx->draw_plane, "CRTC_H",  p->kms->mode.mode.vdisplay);

    int ret = FUNC3(p->kms->fd, request, DRM_MODE_ATOMIC_ALLOW_MODESET, NULL);
    if (ret)
        FUNC0(ctx->vo, "Failed to commit ModeSetting atomic request (%d)\n", ret);

    FUNC4(request);
    return ret == 0;

  err:
    FUNC4(request);
    return false;
}