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
typedef  int /*<<< orphan*/  xcb_window_t ;
struct TYPE_3__ {int /*<<< orphan*/  root; } ;
typedef  TYPE_1__ xcb_screen_t ;
typedef  int /*<<< orphan*/  xcb_connection_t ;
typedef  int /*<<< orphan*/  obs_hotkeys_platform_t ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline xcb_window_t FUNC1(obs_hotkeys_platform_t *context,
				       xcb_connection_t *connection)
{
	xcb_screen_t *screen = FUNC0(context, connection);
	if (screen)
		return screen->root;
	return 0;
}