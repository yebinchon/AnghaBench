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
typedef  int /*<<< orphan*/  xcb_get_geometry_reply_t ;
typedef  int /*<<< orphan*/  xcb_get_geometry_cookie_t ;
typedef  int /*<<< orphan*/  xcb_generic_error_t ;
typedef  int /*<<< orphan*/  xcb_drawable_t ;
typedef  int /*<<< orphan*/  xcb_connection_t ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 

__attribute__((used)) static xcb_get_geometry_reply_t *FUNC4(xcb_connection_t *xcb_conn,
						     xcb_drawable_t drawable)
{
	xcb_get_geometry_cookie_t cookie;
	xcb_generic_error_t *error;
	xcb_get_geometry_reply_t *reply;

	cookie = FUNC2(xcb_conn, drawable);
	reply = FUNC3(xcb_conn, cookie, &error);

	if (error) {
		FUNC0(LOG_ERROR, "Failed to fetch parent window geometry!");
		FUNC1(error);
		FUNC1(reply);
		return 0;
	}

	FUNC1(error);
	return reply;
}