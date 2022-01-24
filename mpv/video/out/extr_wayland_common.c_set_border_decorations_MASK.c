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
struct vo_wayland_state {int /*<<< orphan*/  xdg_toplevel_decoration; } ;
typedef  enum zxdg_toplevel_decoration_v1_mode { ____Placeholder_zxdg_toplevel_decoration_v1_mode } zxdg_toplevel_decoration_v1_mode ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vo_wayland_state*,char*) ; 
 int VO_NOTIMPL ; 
 int VO_TRUE ; 
 int ZXDG_TOPLEVEL_DECORATION_V1_MODE_CLIENT_SIDE ; 
 int ZXDG_TOPLEVEL_DECORATION_V1_MODE_SERVER_SIDE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(struct vo_wayland_state *wl, int state)
{
    if (!wl->xdg_toplevel_decoration)
        return VO_NOTIMPL;

    enum zxdg_toplevel_decoration_v1_mode mode;
    if (state) {
        FUNC0(wl, "Enabling server decorations\n");
        mode = ZXDG_TOPLEVEL_DECORATION_V1_MODE_SERVER_SIDE;
    } else {
        FUNC0(wl, "Disabling server decorations\n");
        mode = ZXDG_TOPLEVEL_DECORATION_V1_MODE_CLIENT_SIDE;
    }
    FUNC1(wl->xdg_toplevel_decoration, mode);
    return VO_TRUE;
}