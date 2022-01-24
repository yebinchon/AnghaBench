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
struct vo_wayland_state {int scaling; int /*<<< orphan*/  surface; int /*<<< orphan*/  geometry; } ;
struct ra_ctx {TYPE_1__* vo; } ;
typedef  int int32_t ;
struct TYPE_2__ {struct vo_wayland_state* wl; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vo_wayland_state*,char*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct ra_ctx*,int const,int const) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static bool FUNC5(struct ra_ctx *ctx)
{
    struct vo_wayland_state *wl = ctx->vo->wl;

    FUNC0(wl, "Handling resize on the vk side\n");

    const int32_t width = wl->scaling*FUNC2(wl->geometry);
    const int32_t height = wl->scaling*FUNC1(wl->geometry);

    FUNC4(wl->surface, wl->scaling);
    return FUNC3(ctx, width, height);
}