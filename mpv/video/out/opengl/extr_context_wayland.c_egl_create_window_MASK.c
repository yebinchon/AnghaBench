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
struct vo_wayland_state {int /*<<< orphan*/  geometry; int /*<<< orphan*/  surface; } ;
struct ra_ctx {TYPE_1__* vo; struct priv* priv; } ;
struct priv {int /*<<< orphan*/  egl_display; int /*<<< orphan*/  egl_context; int /*<<< orphan*/  egl_surface; int /*<<< orphan*/  egl_window; int /*<<< orphan*/  egl_config; } ;
struct TYPE_2__ {struct vo_wayland_state* wl; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct ra_ctx *ctx)
{
    struct priv *p = ctx->priv;
    struct vo_wayland_state *wl = ctx->vo->wl;

    p->egl_window = FUNC5(wl->surface, FUNC4(wl->geometry),
                                         FUNC3(wl->geometry));

    p->egl_surface = FUNC0(p->egl_display, p->egl_config,
                                            p->egl_window, NULL);

    FUNC1(p->egl_display, p->egl_surface, p->egl_surface, p->egl_context);

    FUNC2(p->egl_display, 0);
}