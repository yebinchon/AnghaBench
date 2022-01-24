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
struct TYPE_6__ {int /*<<< orphan*/  (* device_enter_context ) (int /*<<< orphan*/ ) ;} ;
struct TYPE_7__ {int /*<<< orphan*/  ref; int /*<<< orphan*/  device; TYPE_1__ exports; int /*<<< orphan*/  mutex; } ;
typedef  TYPE_2__ graphics_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_2__* thread_graphics ; 

void FUNC5(graphics_t *graphics)
{
	if (!FUNC3(graphics, "gs_enter_context"))
		return;

	bool is_current = thread_graphics == graphics;
	if (thread_graphics && !is_current) {
		while (thread_graphics)
			FUNC0();
	}

	if (!is_current) {
		FUNC2(&graphics->mutex);
		graphics->exports.device_enter_context(graphics->device);
		thread_graphics = graphics;
	}

	FUNC1(&graphics->ref);
}