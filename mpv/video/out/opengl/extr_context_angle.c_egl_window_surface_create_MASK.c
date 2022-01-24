#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct vo {int dummy; } ;
struct ra_ctx {struct vo* vo; struct priv* priv; } ;
struct priv {int flipped; int /*<<< orphan*/  egl_context; int /*<<< orphan*/  egl_window; int /*<<< orphan*/  egl_display; int /*<<< orphan*/  egl_config; } ;
typedef  scalar_t__ EGLint ;

/* Variables and functions */
 scalar_t__ EGL_NONE ; 
 int /*<<< orphan*/  EGL_OPTIMAL_SURFACE_ORIENTATION_ANGLE ; 
 scalar_t__ EGL_SURFACE_ORIENTATION_ANGLE ; 
 scalar_t__ EGL_SURFACE_ORIENTATION_INVERT_Y_ANGLE ; 
 int /*<<< orphan*/  FUNC0 (struct vo*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct vo*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ra_ctx*) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC8 (struct vo*) ; 

__attribute__((used)) static bool FUNC9(struct ra_ctx *ctx)
{
    struct priv *p = ctx->priv;
    struct vo *vo = ctx->vo;

    int window_attribs_len = 0;
    EGLint *window_attribs = NULL;

    EGLint flip_val;
    if (FUNC4(p->egl_display, p->egl_config,
                           EGL_OPTIMAL_SURFACE_ORIENTATION_ANGLE, &flip_val))
    {
        if (flip_val == EGL_SURFACE_ORIENTATION_INVERT_Y_ANGLE) {
            FUNC1(NULL, window_attribs, window_attribs_len,
                EGL_SURFACE_ORIENTATION_ANGLE);
            FUNC1(NULL, window_attribs, window_attribs_len,
                EGL_SURFACE_ORIENTATION_INVERT_Y_ANGLE);
            p->flipped = true;
            FUNC2(vo, "Rendering flipped.\n");
        }
    }

    FUNC1(NULL, window_attribs, window_attribs_len, EGL_NONE);
    p->egl_window = FUNC3(p->egl_display, p->egl_config,
                                           FUNC8(vo), window_attribs);
    FUNC7(window_attribs);
    if (!p->egl_window) {
        FUNC0(vo, "Could not create EGL surface!\n");
        goto fail;
    }

    FUNC5(p->egl_display, p->egl_window, p->egl_window,
                   p->egl_context);
    return true;
fail:
    FUNC6(ctx);
    return false;
}