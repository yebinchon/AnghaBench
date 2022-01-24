#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  plat; int /*<<< orphan*/  proj_stack; int /*<<< orphan*/  empty_vao; scalar_t__ first_program; } ;
typedef  TYPE_1__ gs_device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 

void FUNC5(gs_device_t *device)
{
	if (device) {
		while (device->first_program)
			FUNC4(device->first_program);

		FUNC2(1, &device->empty_vao);

		FUNC1(device->proj_stack);
		FUNC3(device->plat);
		FUNC0(device);
	}
}