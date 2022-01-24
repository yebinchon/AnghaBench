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
typedef  scalar_t__ uint32_t ;
struct wl_keyboard {int dummy; } ;
struct vo_wayland_state {int /*<<< orphan*/ * xkb_keymap; int /*<<< orphan*/  xkb_state; int /*<<< orphan*/  xkb_context; } ;
typedef  int /*<<< orphan*/  int32_t ;

/* Variables and functions */
 char* MAP_FAILED ; 
 int /*<<< orphan*/  MAP_SHARED ; 
 int /*<<< orphan*/  FUNC0 (struct vo_wayland_state*,char*) ; 
 int /*<<< orphan*/  PROT_READ ; 
 scalar_t__ WL_KEYBOARD_KEYMAP_FORMAT_XKB_V1 ; 
 int /*<<< orphan*/  XKB_KEYMAP_FORMAT_TEXT_V1 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 char* FUNC2 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(void *data, struct wl_keyboard *wl_keyboard,
                                   uint32_t format, int32_t fd, uint32_t size)
{
    struct vo_wayland_state *wl = data;
    char *map_str;

    if (format != WL_KEYBOARD_KEYMAP_FORMAT_XKB_V1) {
        FUNC1(fd);
        return;
    }

    map_str = FUNC2(NULL, size, PROT_READ, MAP_SHARED, fd, 0);
    if (map_str == MAP_FAILED) {
        FUNC1(fd);
        return;
    }

    wl->xkb_keymap = FUNC4(wl->xkb_context, map_str,
                                                XKB_KEYMAP_FORMAT_TEXT_V1, 0);

    FUNC3(map_str, size);
    FUNC1(fd);

    if (!wl->xkb_keymap) {
        FUNC0(wl, "failed to compile keymap\n");
        return;
    }

    wl->xkb_state = FUNC6(wl->xkb_keymap);
    if (!wl->xkb_state) {
        FUNC0(wl, "failed to create XKB state\n");
        FUNC5(wl->xkb_keymap);
        wl->xkb_keymap = NULL;
        return;
    }
}