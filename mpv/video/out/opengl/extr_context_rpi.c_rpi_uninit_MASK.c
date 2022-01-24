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
struct ra_ctx {struct priv* priv; } ;
struct priv {int /*<<< orphan*/  egl_display; scalar_t__ egl_context; } ;

/* Variables and functions */
 scalar_t__ EGL_NO_CONTEXT ; 
 int /*<<< orphan*/  EGL_NO_DISPLAY ; 
 int /*<<< orphan*/  FUNC0 (struct ra_ctx*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct ra_ctx*) ; 
 int /*<<< orphan*/  tv_callback ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct ra_ctx*) ; 

__attribute__((used)) static void FUNC5(struct ra_ctx *ctx)
{
    struct priv *p = ctx->priv;
    FUNC3(ctx);

    FUNC4(tv_callback, ctx);

    FUNC0(ctx);

    if (p->egl_context)
        FUNC1(p->egl_display, p->egl_context);
    p->egl_context = EGL_NO_CONTEXT;
    FUNC2();
    p->egl_display = EGL_NO_DISPLAY;
}