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
struct ra_ctx {int /*<<< orphan*/  vo; struct priv* priv; } ;
struct priv {int /*<<< orphan*/  egl_display; int /*<<< orphan*/ * egl_context; int /*<<< orphan*/  egl_surface; scalar_t__ egl_window; } ;

/* Variables and functions */
 int /*<<< orphan*/  EGL_NO_CONTEXT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ra_ctx*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 

__attribute__((used)) static void FUNC8(struct ra_ctx *ctx)
{
    struct priv *p = ctx->priv;

    FUNC5(ctx);

    if (p->egl_context) {
        FUNC3();
        if (p->egl_window)
            FUNC7(p->egl_window);
        FUNC1(p->egl_display, p->egl_surface);
        FUNC2(p->egl_display, NULL, NULL, EGL_NO_CONTEXT);
        FUNC0(p->egl_display, p->egl_context);
        p->egl_context = NULL;
    }
    FUNC4(p->egl_display);

    FUNC6(ctx->vo);
}