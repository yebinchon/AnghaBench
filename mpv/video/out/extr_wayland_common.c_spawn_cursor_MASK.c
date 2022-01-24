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
struct vo_wayland_state {int allocated_cursor_scale; int scaling; int /*<<< orphan*/  default_cursor; int /*<<< orphan*/  cursor_theme; int /*<<< orphan*/  shm; } ;

/* Variables and functions */
 long INT_MAX ; 
 int /*<<< orphan*/  FUNC0 (struct vo_wayland_state*,char*) ; 
 scalar_t__ errno ; 
 char* FUNC1 (char*) ; 
 long FUNC2 (char const*,char**,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct vo_wayland_state *wl)
{
    if (wl->allocated_cursor_scale == wl->scaling) /* Reuse if size is identical */
        return 0;
    else if (wl->cursor_theme)
        FUNC3(wl->cursor_theme);

    const char *size_str = FUNC1("XCURSOR_SIZE");
    int size = 32;
    if (size_str != NULL) {
        errno = 0;
        char *end;
        long size_long = FUNC2(size_str, &end, 10);
        if (!*end && !errno && size_long > 0 && size_long <= INT_MAX)
            size = (int)size_long;
    }

    wl->cursor_theme = FUNC5(NULL, size*wl->scaling, wl->shm);
    if (!wl->cursor_theme) {
        FUNC0(wl, "Unable to load cursor theme!\n");
        return 1;
    }

    wl->default_cursor = FUNC4(wl->cursor_theme, "left_ptr");
    if (!wl->default_cursor) {
        FUNC0(wl, "Unable to load cursor theme!\n");
        return 1;
    }

    wl->allocated_cursor_scale = wl->scaling;

    return 0;
}