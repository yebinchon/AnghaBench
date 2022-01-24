#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xcb_xfixes_get_cursor_image_reply_t ;
typedef  int /*<<< orphan*/  xcb_xfixes_get_cursor_image_cookie_t ;
typedef  int /*<<< orphan*/  xcb_shm_get_image_reply_t ;
typedef  int /*<<< orphan*/  xcb_shm_get_image_cookie_t ;
struct TYPE_6__ {int width; int /*<<< orphan*/  cursor; TYPE_2__* xshm; int /*<<< orphan*/  texture; int /*<<< orphan*/  xcb; int /*<<< orphan*/  height; int /*<<< orphan*/  y_org; int /*<<< orphan*/  x_org; TYPE_1__* xcb_screen; int /*<<< orphan*/  source; } ;
struct TYPE_5__ {scalar_t__ data; int /*<<< orphan*/  seg; } ;
struct TYPE_4__ {int /*<<< orphan*/  root; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (float) ; 
 int /*<<< orphan*/  XCB_IMAGE_FORMAT_Z_PIXMAP ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 TYPE_3__* data ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,void*,int,int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC12(void *vptr, float seconds)
{
	FUNC0(seconds);
	FUNC1(vptr);

	if (!data->texture)
		return;
	if (!FUNC6(data->source))
		return;

	xcb_shm_get_image_cookie_t img_c;
	xcb_shm_get_image_reply_t *img_r;
	xcb_xfixes_get_cursor_image_cookie_t cur_c;
	xcb_xfixes_get_cursor_image_reply_t *cur_r;

	img_c = FUNC8(data->xcb, data->xcb_screen->root,
					    data->x_org, data->y_org,
					    data->width, data->height, ~0,
					    XCB_IMAGE_FORMAT_Z_PIXMAP,
					    data->xshm->seg, 0);
	cur_c = FUNC11(data->xcb);

	img_r = FUNC7(data->xcb, img_c, NULL);
	cur_r = FUNC10(data->xcb, cur_c, NULL);

	if (!img_r)
		goto exit;

	FUNC4();

	FUNC3(data->texture, (void *)data->xshm->data,
			     data->width * 4, false);
	FUNC9(data->cursor, cur_r);

	FUNC5();

exit:
	FUNC2(img_r);
	FUNC2(cur_r);
}