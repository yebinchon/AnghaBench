#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct ra_ctx {int /*<<< orphan*/  vo; struct priv* priv; } ;
struct TYPE_7__ {int /*<<< orphan*/  render_fd; } ;
struct TYPE_6__ {int /*<<< orphan*/  context; int /*<<< orphan*/  display; int /*<<< orphan*/  surface; } ;
struct TYPE_5__ {int /*<<< orphan*/  device; int /*<<< orphan*/  surface; scalar_t__ num_bos; } ;
struct priv {TYPE_4__* kms; TYPE_3__ drm_params; TYPE_2__ egl; TYPE_1__ gbm; int /*<<< orphan*/  vt_switcher; scalar_t__ vt_switcher_active; } ;
struct drm_atomic_context {int /*<<< orphan*/  request; } ;
struct TYPE_8__ {int /*<<< orphan*/  fd; struct drm_atomic_context* atomic_context; } ;

/* Variables and functions */
 int /*<<< orphan*/  EGL_NO_CONTEXT ; 
 int /*<<< orphan*/  EGL_NO_SURFACE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ra_ctx*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC12 (struct ra_ctx*) ; 
 int /*<<< orphan*/  FUNC13 (struct ra_ctx*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC15(struct ra_ctx *ctx)
{
    struct priv *p = ctx->priv;
    struct drm_atomic_context *atomic_ctx = p->kms->atomic_context;

    if (atomic_ctx) {
        int ret = FUNC3(p->kms->fd, atomic_ctx->request, 0, NULL);
        if (ret)
            FUNC0(ctx->vo, "Failed to commit atomic request (%d)\n", ret);
        FUNC4(atomic_ctx->request);
    }

    FUNC12(ctx);

    FUNC2(ctx);
    if (p->vt_switcher_active)
        FUNC14(&p->vt_switcher);

    // According to GBM documentation all BO:s must be released before
    // gbm_surface_destroy can be called on the surface.
    while (p->gbm.num_bos) {
        FUNC13(ctx);
    }

    FUNC7(p->egl.display, EGL_NO_SURFACE, EGL_NO_SURFACE,
                   EGL_NO_CONTEXT);
    FUNC5(p->egl.display, p->egl.context);
    FUNC6(p->egl.display, p->egl.surface);
    FUNC10(p->gbm.surface);
    FUNC8(p->egl.display);
    FUNC9(p->gbm.device);
    p->egl.context = EGL_NO_CONTEXT;
    FUNC5(p->egl.display, p->egl.context);

    FUNC1(p->drm_params.render_fd);

    if (p->kms) {
        FUNC11(p->kms);
        p->kms = 0;
    }
}