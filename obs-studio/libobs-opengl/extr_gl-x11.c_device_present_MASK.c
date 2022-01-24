#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xcb_generic_event_t ;
typedef  int /*<<< orphan*/  xcb_connection_t ;
struct TYPE_9__ {TYPE_2__* cur_swap; TYPE_1__* plat; } ;
typedef  TYPE_4__ gs_device_t ;
typedef  enum swap_type { ____Placeholder_swap_type } swap_type ;
typedef  int /*<<< orphan*/  XID ;
struct TYPE_8__ {int /*<<< orphan*/  window; } ;
struct TYPE_7__ {TYPE_3__* wi; } ;
struct TYPE_6__ {int /*<<< orphan*/ * display; } ;
typedef  int /*<<< orphan*/  Display ;

/* Variables and functions */
 scalar_t__ GLAD_GLX_EXT_swap_control ; 
 scalar_t__ GLAD_GLX_MESA_swap_control ; 
 scalar_t__ GLAD_GLX_SGI_swap_control ; 
#define  SWAP_TYPE_EXT 131 
#define  SWAP_TYPE_MESA 130 
#define  SWAP_TYPE_NORMAL 129 
#define  SWAP_TYPE_SGI 128 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 

extern void FUNC7(gs_device_t *device)
{
	static bool initialized = false;
	static enum swap_type swap_type = SWAP_TYPE_NORMAL;

	Display *display = device->plat->display;
	XID window = device->cur_swap->wi->window;

	if (!initialized) {
		if (GLAD_GLX_EXT_swap_control)
			swap_type = SWAP_TYPE_EXT;
		else if (GLAD_GLX_MESA_swap_control)
			swap_type = SWAP_TYPE_MESA;
		else if (GLAD_GLX_SGI_swap_control)
			swap_type = SWAP_TYPE_SGI;

		initialized = true;
	}

	xcb_connection_t *xcb_conn = FUNC0(display);
	xcb_generic_event_t *xcb_event;
	while ((xcb_event = FUNC6(xcb_conn))) {
		/* TODO: Handle XCB events. */
		FUNC1(xcb_event);
	}

	switch (swap_type) {
	case SWAP_TYPE_EXT:
		FUNC3(display, window, 0);
		break;
	case SWAP_TYPE_MESA:
		FUNC4(0);
		break;
	case SWAP_TYPE_SGI:
		FUNC5(0);
		break;
	case SWAP_TYPE_NORMAL:;
	}

	FUNC2(display, window);
}