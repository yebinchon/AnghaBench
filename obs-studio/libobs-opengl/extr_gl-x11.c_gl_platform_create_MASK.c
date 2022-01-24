#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct gl_platform {int /*<<< orphan*/  context; int /*<<< orphan*/  pbuffer; int /*<<< orphan*/ * display; } ;
struct TYPE_3__ {struct gl_platform* plat; } ;
typedef  TYPE_1__ gs_device_t ;
typedef  int /*<<< orphan*/  Display ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  XCBOwnsEventQueue ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct gl_platform*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 struct gl_platform* FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct gl_platform*) ; 
 int /*<<< orphan*/  FUNC9 (struct gl_platform*) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/ * FUNC11 () ; 
 int /*<<< orphan*/  x_error_handler ; 

extern struct gl_platform *FUNC12(gs_device_t *device,
					      uint32_t adapter)
{
	/* There's some trickery here... we're mixing libX11, xcb, and GLX
	   For an explanation see here: http://xcb.freedesktop.org/MixingCalls/
	   Essentially, GLX requires Xlib. Everything else we use xcb. */
	struct gl_platform *plat = FUNC6(sizeof(struct gl_platform));
	Display *display = FUNC11();

	if (!display) {
		goto fail_display_open;
	}

	FUNC3(display, XCBOwnsEventQueue);
	FUNC2(x_error_handler);

	/* We assume later that cur_swap is already set. */
	device->plat = plat;

	plat->display = display;

	if (!FUNC8(plat)) {
		FUNC5(LOG_ERROR, "Failed to create context!");
		goto fail_context_create;
	}

	if (!FUNC7(plat->display, plat->pbuffer, plat->pbuffer,
				   plat->context)) {
		FUNC5(LOG_ERROR, "Failed to make context current.");
		goto fail_make_current;
	}

	if (!FUNC10()) {
		FUNC5(LOG_ERROR, "Failed to load OpenGL entry functions.");
		goto fail_load_gl;
	}

	goto success;

fail_make_current:
	FUNC9(plat);
fail_context_create:
fail_load_gl:
	FUNC1(display);
fail_display_open:
	FUNC4(plat);
	plat = NULL;
success:
	FUNC0(adapter);
	return plat;
}