#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xcb_screen_t ;
struct TYPE_4__ {int /*<<< orphan*/ * data; scalar_t__ rem; } ;
typedef  TYPE_1__ xcb_screen_iterator_t ;
typedef  int /*<<< orphan*/  xcb_connection_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 TYPE_1__ FUNC2 (int /*<<< orphan*/ ) ; 

xcb_screen_t *FUNC3(xcb_connection_t *xcb, int screen)
{
	xcb_screen_iterator_t iter;

	iter = FUNC2(FUNC0(xcb));
	for (; iter.rem; --screen, FUNC1(&iter)) {
		if (screen == 0)
			return iter.data;
	}

	return NULL;
}