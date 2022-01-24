#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  root; } ;
typedef  TYPE_1__ xcb_screen_t ;
typedef  int /*<<< orphan*/  xcb_randr_get_screen_resources_reply_t ;
typedef  int /*<<< orphan*/  xcb_randr_get_screen_resources_cookie_t ;
typedef  int /*<<< orphan*/  xcb_connection_t ;
struct TYPE_4__ {TYPE_1__* data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__ FUNC4 (int /*<<< orphan*/ ) ; 

int FUNC5(xcb_connection_t *xcb)
{
	if (!xcb)
		return 0;
	xcb_screen_t *screen;
	screen = FUNC4(FUNC0(xcb)).data;

	xcb_randr_get_screen_resources_cookie_t res_c;
	xcb_randr_get_screen_resources_reply_t *res_r;

	res_c = FUNC1(xcb, screen->root);
	res_r = FUNC3(xcb, res_c, 0);
	if (!res_r)
		return 0;

	return FUNC2(res_r);
}