#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  cur_blend_state; int /*<<< orphan*/  blend_state_stack; } ;
typedef  TYPE_1__ graphics_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 TYPE_1__* thread_graphics ; 

void FUNC2(void)
{
	graphics_t *graphics = thread_graphics;

	if (!FUNC1("gs_blend_state_push"))
		return;

	FUNC0(graphics->blend_state_stack, &graphics->cur_blend_state);
}