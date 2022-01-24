#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct vo_wayland_state {int scaling; TYPE_2__* vo; int /*<<< orphan*/  surface; int /*<<< orphan*/  geometry; } ;
struct ra_ctx {TYPE_1__* vo; struct priv* priv; } ;
struct priv {scalar_t__ egl_window; } ;
typedef  int int32_t ;
struct TYPE_4__ {int dwidth; int dheight; } ;
struct TYPE_3__ {struct vo_wayland_state* wl; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vo_wayland_state*,char*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int const,int const,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC5(struct ra_ctx *ctx)
{
    struct priv *p = ctx->priv;
    struct vo_wayland_state *wl = ctx->vo->wl;

    FUNC0(wl, "Handling resize on the egl side\n");

    const int32_t width = wl->scaling*FUNC2(wl->geometry);
    const int32_t height = wl->scaling*FUNC1(wl->geometry);

    FUNC4(wl->surface, wl->scaling);

    if (p->egl_window)
        FUNC3(p->egl_window, width, height, 0, 0);

    wl->vo->dwidth  = width;
    wl->vo->dheight = height;
}