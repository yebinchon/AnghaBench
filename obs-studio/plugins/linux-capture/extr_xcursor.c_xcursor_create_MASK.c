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
struct TYPE_6__ {scalar_t__ last_height; scalar_t__ last_width; int /*<<< orphan*/  last_serial; scalar_t__ tex; } ;
typedef  TYPE_1__ xcursor_t ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_7__ {scalar_t__ width; scalar_t__ height; int /*<<< orphan*/  cursor_serial; } ;
typedef  TYPE_2__ XFixesCursorImage ;

/* Variables and functions */
 int /*<<< orphan*/  False ; 
 int /*<<< orphan*/  GS_BGRA ; 
 int /*<<< orphan*/  GS_DYNAMIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int,scalar_t__,int /*<<< orphan*/ ,int,int /*<<< orphan*/  const**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/  const*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC5(xcursor_t *data, XFixesCursorImage *xc)
{
	uint32_t *pixels = FUNC4(xc);
	if (!pixels)
		return;

	if (data->tex && data->last_height == xc->width &&
	    data->last_width == xc->height) {
		FUNC3(data->tex, (const uint8_t *)pixels,
				     xc->width * sizeof(uint32_t), False);
	} else {
		if (data->tex)
			FUNC2(data->tex);

		data->tex = FUNC1(xc->width, xc->height, GS_BGRA, 1,
					      (const uint8_t **)&pixels,
					      GS_DYNAMIC);
	}

	FUNC0(pixels);

	data->last_serial = xc->cursor_serial;
	data->last_width = xc->width;
	data->last_height = xc->height;
}