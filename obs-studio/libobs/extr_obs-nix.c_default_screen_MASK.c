#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xcb_screen_t ;
struct TYPE_6__ {int /*<<< orphan*/ * data; scalar_t__ rem; } ;
typedef  TYPE_1__ xcb_screen_iterator_t ;
typedef  int /*<<< orphan*/  xcb_connection_t ;
struct TYPE_7__ {int /*<<< orphan*/  display; } ;
typedef  TYPE_2__ obs_hotkeys_platform_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 TYPE_1__ FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static xcb_screen_t *FUNC4(obs_hotkeys_platform_t *context,
				    xcb_connection_t *connection)
{
	int def_screen_idx = FUNC0(context->display);
	xcb_screen_iterator_t iter;

	iter = FUNC3(FUNC1(connection));
	while (iter.rem) {
		if (def_screen_idx-- == 0)
			return iter.data;

		FUNC2(&iter);
	}

	return NULL;
}