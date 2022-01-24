#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_5__ {int x; int y; int cx; int cy; } ;
struct TYPE_6__ {TYPE_1__ cur_viewport; scalar_t__ cur_swap; scalar_t__ cur_render_target; } ;
typedef  TYPE_2__ gs_device_t ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int*,int*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

void FUNC5(gs_device_t *device, int x, int y, int width,
			 int height)
{
	uint32_t base_height = 0;
	int gl_y = 0;

	/* GL uses bottom-up coordinates for viewports.  We want top-down */
	if (device->cur_render_target) {
		base_height = FUNC1(device);
	} else if (device->cur_swap) {
		uint32_t dw;
		FUNC3(device->cur_swap, &dw, &base_height);
	}

	if (base_height)
		gl_y = base_height - y - height;

	FUNC2(x, gl_y, width, height);
	if (!FUNC4("glViewport"))
		FUNC0(LOG_ERROR, "device_set_viewport (GL) failed");

	device->cur_viewport.x = x;
	device->cur_viewport.y = y;
	device->cur_viewport.cx = width;
	device->cur_viewport.cy = height;
}