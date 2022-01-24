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
struct priv {scalar_t__ update; scalar_t__ display; scalar_t__ window; scalar_t__ egl_surface; int /*<<< orphan*/  egl_display; } ;

/* Variables and functions */
 int /*<<< orphan*/  EGL_NO_CONTEXT ; 
 scalar_t__ EGL_NO_SURFACE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 

__attribute__((used)) static void FUNC5(struct ra_ctx *ctx)
{
    struct priv *p = ctx->priv;

    if (p->egl_surface) {
        FUNC1(p->egl_display, EGL_NO_SURFACE, EGL_NO_SURFACE,
                       EGL_NO_CONTEXT);
        FUNC0(p->egl_display, p->egl_surface);
        p->egl_surface = EGL_NO_SURFACE;
    }

    if (p->window)
        FUNC3(p->update, p->window);
    p->window = 0;
    if (p->display)
        FUNC2(p->display);
    p->display = 0;
    if (p->update)
        FUNC4(p->update);
    p->update = 0;
}