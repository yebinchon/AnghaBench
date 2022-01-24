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
typedef  scalar_t__ xcb_window_t ;
struct TYPE_6__ {scalar_t__ root; } ;
typedef  TYPE_1__ xcb_screen_t ;
struct TYPE_7__ {TYPE_1__* data; scalar_t__ rem; } ;
typedef  TYPE_2__ xcb_screen_iterator_t ;
typedef  int /*<<< orphan*/  xcb_connection_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 TYPE_2__ FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static xcb_screen_t *FUNC3(xcb_connection_t *xcb_conn,
					  xcb_window_t root)
{
	xcb_screen_iterator_t iter =
		FUNC2(FUNC0(xcb_conn));

	while (iter.rem) {
		if (iter.data->root == root)
			return iter.data;

		FUNC1(&iter);
	}

	return 0;
}