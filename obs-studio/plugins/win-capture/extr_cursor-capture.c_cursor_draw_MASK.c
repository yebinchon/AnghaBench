#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {long x; long y; } ;
struct cursor_data {long x_hotspot; long y_hotspot; int /*<<< orphan*/  texture; scalar_t__ visible; TYPE_1__ cursor_pos; } ;

/* Variables and functions */
 int /*<<< orphan*/  GS_BLEND_INVSRCALPHA ; 
 int /*<<< orphan*/  GS_BLEND_SRCALPHA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (float,float,float) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,long,long,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

void FUNC8(struct cursor_data *data, long x_offset, long y_offset,
		 float x_scale, float y_scale, long width, long height)
{
	long x = data->cursor_pos.x + x_offset;
	long y = data->cursor_pos.y + y_offset;
	long x_draw = x - data->x_hotspot;
	long y_draw = y - data->y_hotspot;

	if (x < 0 || x > width || y < 0 || y > height)
		return;

	if (data->visible && !!data->texture) {
		FUNC2();
		FUNC0(GS_BLEND_SRCALPHA, GS_BLEND_INVSRCALPHA);
		FUNC3(true, true, true, false);

		FUNC5();
		FUNC6(x_scale, y_scale, 1.0f);
		FUNC7(data->texture, x_draw, y_draw, 0, 0, false);
		FUNC4();

		FUNC3(true, true, true, true);
		FUNC1();
	}
}