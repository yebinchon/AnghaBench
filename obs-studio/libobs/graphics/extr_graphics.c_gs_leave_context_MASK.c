#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  (* device_leave_context ) (int /*<<< orphan*/ ) ;} ;
struct TYPE_5__ {int /*<<< orphan*/  mutex; int /*<<< orphan*/  device; TYPE_1__ exports; int /*<<< orphan*/  ref; } ;
typedef  TYPE_2__ graphics_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_2__* thread_graphics ; 

void FUNC4(void)
{
	if (FUNC0("gs_leave_context")) {
		if (!FUNC1(&thread_graphics->ref)) {
			graphics_t *graphics = thread_graphics;

			graphics->exports.device_leave_context(
				graphics->device);
			FUNC2(&graphics->mutex);
			thread_graphics = NULL;
		}
	}
}