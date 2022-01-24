#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  root; } ;
typedef  TYPE_1__ xcb_screen_t ;
typedef  int /*<<< orphan*/  xcb_randr_get_screen_resources_reply_t ;
typedef  int /*<<< orphan*/  xcb_randr_get_screen_resources_cookie_t ;
struct TYPE_7__ {int x; int y; int width; int height; } ;
typedef  TYPE_2__ xcb_randr_get_crtc_info_reply_t ;
typedef  int /*<<< orphan*/  xcb_randr_get_crtc_info_cookie_t ;
typedef  int /*<<< orphan*/  xcb_randr_crtc_t ;
typedef  int /*<<< orphan*/  xcb_connection_t ;
typedef  int int_fast32_t ;
struct TYPE_8__ {TYPE_1__* data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_3__ FUNC7 (int /*<<< orphan*/ ) ; 

int FUNC8(xcb_connection_t *xcb, int_fast32_t screen,
		     int_fast32_t *x, int_fast32_t *y, int_fast32_t *w,
		     int_fast32_t *h, xcb_screen_t **rscreen)
{
	xcb_screen_t *xscreen;
	xscreen = FUNC7(FUNC0(xcb)).data;

	xcb_randr_get_screen_resources_cookie_t res_c;
	xcb_randr_get_screen_resources_reply_t *res_r;

	res_c = FUNC3(xcb, xscreen->root);
	res_r = FUNC6(xcb, res_c, 0);
	if (!res_r)
		goto fail;

	int screens = FUNC5(res_r);
	if (screen < 0 || screen >= screens)
		goto fail;

	xcb_randr_crtc_t *crtc = FUNC4(res_r);

	xcb_randr_get_crtc_info_cookie_t crtc_c;
	xcb_randr_get_crtc_info_reply_t *crtc_r;

	crtc_c = FUNC1(xcb, *(crtc + screen), 0);
	crtc_r = FUNC2(xcb, crtc_c, 0);
	if (!crtc_r)
		goto fail;

	*x = crtc_r->x;
	*y = crtc_r->y;
	*w = crtc_r->width;
	*h = crtc_r->height;

	if (rscreen)
		*rscreen = xscreen;

	return 0;

fail:
	*x = *y = *w = *h = 0;
	return -1;
}