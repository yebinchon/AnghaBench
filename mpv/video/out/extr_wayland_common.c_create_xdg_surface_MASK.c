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
struct vo_wayland_state {int /*<<< orphan*/  xdg_toplevel; int /*<<< orphan*/  xdg_surface; int /*<<< orphan*/  surface; int /*<<< orphan*/  wm_base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct vo_wayland_state*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  xdg_surface_listener ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct vo_wayland_state*) ; 
 int /*<<< orphan*/  xdg_toplevel_listener ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct vo_wayland_state *wl)
{
    wl->xdg_surface = FUNC5(wl->wm_base, wl->surface);
    FUNC0(wl->xdg_surface, &xdg_surface_listener, wl);

    wl->xdg_toplevel = FUNC1(wl->xdg_surface);
    FUNC2(wl->xdg_toplevel, &xdg_toplevel_listener, wl);

    FUNC4 (wl->xdg_toplevel, "mpv");
    FUNC3(wl->xdg_toplevel, "mpv");

    return 0;
}