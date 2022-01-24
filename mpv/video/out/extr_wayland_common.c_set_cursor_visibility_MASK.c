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
struct wl_cursor_image {int hotspot_x; int hotspot_y; int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;
struct wl_buffer {int dummy; } ;
struct vo_wayland_state {int cursor_visible; int scaling; int /*<<< orphan*/  pointer_id; int /*<<< orphan*/  pointer; int /*<<< orphan*/ * cursor_surface; TYPE_1__* default_cursor; } ;
struct TYPE_2__ {struct wl_cursor_image** images; } ;

/* Variables and functions */
 int VO_FALSE ; 
 int VO_NOTAVAIL ; 
 int VO_TRUE ; 
 scalar_t__ FUNC0 (struct vo_wayland_state*) ; 
 struct wl_buffer* FUNC1 (struct wl_cursor_image*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct wl_buffer*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC7(struct vo_wayland_state *wl, bool on)
{
    if (!wl->pointer)
        return VO_NOTAVAIL;
    wl->cursor_visible = on;
    if (on) {
        if (FUNC0(wl))
            return VO_FALSE;
        struct wl_cursor_image *img = wl->default_cursor->images[0];
        struct wl_buffer *buffer = FUNC1(img);
        if (!buffer)
            return VO_FALSE;
        FUNC2(wl->pointer, wl->pointer_id, wl->cursor_surface,
                              img->hotspot_x/wl->scaling, img->hotspot_y/wl->scaling);
        FUNC6(wl->cursor_surface, wl->scaling);
        FUNC3(wl->cursor_surface, buffer, 0, 0);
        FUNC5(wl->cursor_surface, 0, 0, img->width, img->height);
        FUNC4(wl->cursor_surface);
    } else {
        FUNC2(wl->pointer, wl->pointer_id, NULL, 0, 0);
    }
    return VO_TRUE;
}