#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct ra_ctx {int /*<<< orphan*/  vo; struct priv* priv; } ;
struct priv {TYPE_1__* kms; } ;
struct drm_atomic_context {int dummy; } ;
typedef  int /*<<< orphan*/  drmModeAtomicReqPtr ;
struct TYPE_2__ {int /*<<< orphan*/  fd; struct drm_atomic_context* atomic_context; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRM_MODE_ATOMIC_ALLOW_MODESET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct drm_atomic_context*) ; 

__attribute__((used)) static bool FUNC6(struct ra_ctx *ctx)
{
    struct priv *p = ctx->priv;

    struct drm_atomic_context *atomic_ctx = p->kms->atomic_context;
    drmModeAtomicReqPtr request = FUNC2();
    if (!request) {
        FUNC0(ctx->vo, "Failed to allocate drm atomic request\n");
        return false;
    }

    if (!FUNC5(request, atomic_ctx)) {
        FUNC1(ctx->vo, "Got error while restoring old state\n");
    }

    int ret = FUNC3(p->kms->fd, request, DRM_MODE_ATOMIC_ALLOW_MODESET, NULL);

    if (ret)
        FUNC1(ctx->vo, "Failed to commit ModeSetting atomic request (%d)\n", ret);

    FUNC4(request);
    return ret == 0;
}