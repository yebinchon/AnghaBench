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
typedef  int /*<<< orphan*/  uint32_t ;
struct wl_callback {int dummy; } ;
struct vo_wayland_state {int frame_wait; int /*<<< orphan*/  frame_callback; int /*<<< orphan*/  surface; } ;

/* Variables and functions */
 int /*<<< orphan*/  frame_listener ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct vo_wayland_state*) ; 
 int /*<<< orphan*/  FUNC1 (struct wl_callback*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(void *data, struct wl_callback *callback, uint32_t time)
{
    struct vo_wayland_state *wl = data;

    if (callback)
        FUNC1(callback);

    wl->frame_callback = FUNC2(wl->surface);
    FUNC0(wl->frame_callback, &frame_listener, wl);
    wl->frame_wait = false;
}