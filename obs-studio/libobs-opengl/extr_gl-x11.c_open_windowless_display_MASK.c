#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  root; } ;
typedef  TYPE_1__ xcb_screen_t ;
struct TYPE_5__ {TYPE_1__* data; } ;
typedef  TYPE_2__ xcb_screen_iterator_t ;
typedef  int /*<<< orphan*/  xcb_connection_t ;
typedef  int /*<<< orphan*/  Display ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 TYPE_2__ FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static Display *FUNC8(void)
{
	Display *display = FUNC2(NULL);
	xcb_connection_t *xcb_conn;
	xcb_screen_iterator_t screen_iterator;
	xcb_screen_t *screen;
	int screen_num;

	if (!display) {
		FUNC3(LOG_ERROR, "Unable to open new X connection!");
		return NULL;
	}

	xcb_conn = FUNC1(display);
	if (!xcb_conn) {
		FUNC3(LOG_ERROR, "Unable to get XCB connection to main display");
		goto error;
	}

	screen_iterator = FUNC7(FUNC6(xcb_conn));
	screen = screen_iterator.data;
	if (!screen) {
		FUNC3(LOG_ERROR, "Unable to get screen root");
		goto error;
	}

	screen_num = FUNC4(xcb_conn, screen->root);
	if (screen_num == -1) {
		FUNC3(LOG_ERROR, "Unable to get screen number from root");
		goto error;
	}

	if (!FUNC5(display, screen_num)) {
		FUNC3(LOG_ERROR, "Unable to load GLX entry functions.");
		goto error;
	}

	return display;

error:
	if (display)
		FUNC0(display);
	return NULL;
}