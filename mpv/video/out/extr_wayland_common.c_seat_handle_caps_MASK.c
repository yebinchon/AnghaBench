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
struct wl_seat {int dummy; } ;
struct vo_wayland_state {int /*<<< orphan*/ * touch; int /*<<< orphan*/ * keyboard; int /*<<< orphan*/ * pointer; } ;
typedef  enum wl_seat_capability { ____Placeholder_wl_seat_capability } wl_seat_capability ;

/* Variables and functions */
 int WL_SEAT_CAPABILITY_KEYBOARD ; 
 int WL_SEAT_CAPABILITY_POINTER ; 
 int WL_SEAT_CAPABILITY_TOUCH ; 
 int /*<<< orphan*/  keyboard_listener ; 
 int /*<<< orphan*/  pointer_listener ; 
 int /*<<< orphan*/  touch_listener ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct vo_wayland_state*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct vo_wayland_state*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (struct wl_seat*) ; 
 int /*<<< orphan*/ * FUNC5 (struct wl_seat*) ; 
 int /*<<< orphan*/ * FUNC6 (struct wl_seat*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct vo_wayland_state*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,struct vo_wayland_state*) ; 

__attribute__((used)) static void FUNC10(void *data, struct wl_seat *seat,
                             enum wl_seat_capability caps)
{
    struct vo_wayland_state *wl = data;

    if ((caps & WL_SEAT_CAPABILITY_POINTER) && !wl->pointer) {
        wl->pointer = FUNC5(seat);
        FUNC2(wl->pointer, &pointer_listener, wl);
    } else if (!(caps & WL_SEAT_CAPABILITY_POINTER) && wl->pointer) {
        FUNC3(wl->pointer);
        wl->pointer = NULL;
    }

    if ((caps & WL_SEAT_CAPABILITY_KEYBOARD) && !wl->keyboard) {
        wl->keyboard = FUNC4(seat);
        FUNC0(wl->keyboard, &keyboard_listener, wl);
    } else if (!(caps & WL_SEAT_CAPABILITY_KEYBOARD) && wl->keyboard) {
        FUNC1(wl->keyboard);
        wl->keyboard = NULL;
    }

    if ((caps & WL_SEAT_CAPABILITY_TOUCH) && !wl->touch) {
        wl->touch = FUNC6(seat);
        FUNC9(wl->touch, wl);
        FUNC7(wl->touch, &touch_listener, wl);
    } else if (!(caps & WL_SEAT_CAPABILITY_TOUCH) && wl->touch) {
        FUNC8(wl->touch);
        wl->touch = NULL;
    }
}