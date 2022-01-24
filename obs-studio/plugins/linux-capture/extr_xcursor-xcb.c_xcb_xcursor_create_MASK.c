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
struct TYPE_6__ {scalar_t__ width; scalar_t__ height; int /*<<< orphan*/  cursor_serial; } ;
typedef  TYPE_1__ xcb_xfixes_get_cursor_image_reply_t ;
struct TYPE_7__ {scalar_t__ last_height; scalar_t__ last_width; int /*<<< orphan*/  last_serial; scalar_t__ tex; } ;
typedef  TYPE_2__ xcb_xcursor_t ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  GS_BGRA ; 
 int /*<<< orphan*/  GS_DYNAMIC ; 
 scalar_t__ FUNC0 (int,scalar_t__,int /*<<< orphan*/ ,int,int /*<<< orphan*/  const**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/  const*,int,int) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC4(xcb_xcursor_t *data,
			       xcb_xfixes_get_cursor_image_reply_t *xc)
{
	uint32_t *pixels = FUNC3(xc);
	if (!pixels)
		return;

	if (data->tex && data->last_height == xc->width &&
	    data->last_width == xc->height) {
		FUNC2(data->tex, (const uint8_t *)pixels,
				     xc->width * sizeof(uint32_t), false);
	} else {
		if (data->tex)
			FUNC1(data->tex);

		data->tex = FUNC0(xc->width, xc->height, GS_BGRA, 1,
					      (const uint8_t **)&pixels,
					      GS_DYNAMIC);
	}

	data->last_serial = xc->cursor_serial;
	data->last_width = xc->width;
	data->last_height = xc->height;
}