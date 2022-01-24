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
struct xdg_toplevel {int dummy; } ;
struct vo_wayland_state {TYPE_1__* vo; } ;
struct TYPE_2__ {int /*<<< orphan*/  input_ctx; } ;

/* Variables and functions */
 int /*<<< orphan*/  MP_KEY_CLOSE_WIN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(void *data, struct xdg_toplevel *xdg_toplevel)
{
    struct vo_wayland_state *wl = data;
    FUNC0(wl->vo->input_ctx, MP_KEY_CLOSE_WIN);
}