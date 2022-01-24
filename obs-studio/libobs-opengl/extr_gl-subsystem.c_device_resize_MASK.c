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
typedef  void* uint32_t ;
struct TYPE_8__ {TYPE_2__* cur_swap; } ;
typedef  TYPE_3__ gs_device_t ;
struct TYPE_6__ {void* cy; void* cx; } ;
struct TYPE_7__ {TYPE_1__ info; } ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_WARNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 

void FUNC2(gs_device_t *device, uint32_t cx, uint32_t cy)
{
	/* GL automatically resizes the device, so it doesn't do much */
	if (device->cur_swap) {
		device->cur_swap->info.cx = cx;
		device->cur_swap->info.cy = cy;
	} else {
		FUNC0(LOG_WARNING, "device_resize (GL): No active swap");
	}

	FUNC1(device);
}