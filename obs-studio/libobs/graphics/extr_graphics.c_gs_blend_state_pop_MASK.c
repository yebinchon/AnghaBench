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
struct blend_state {int /*<<< orphan*/  dest_a; int /*<<< orphan*/  src_a; int /*<<< orphan*/  dest_c; int /*<<< orphan*/  src_c; int /*<<< orphan*/  enabled; } ;
struct TYPE_3__ {int /*<<< orphan*/  blend_state_stack; } ;
typedef  TYPE_1__ graphics_t ;

/* Variables and functions */
 struct blend_state* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 TYPE_1__* thread_graphics ; 

void FUNC5(void)
{
	graphics_t *graphics = thread_graphics;
	struct blend_state *state;

	if (!FUNC4("gs_blend_state_pop"))
		return;

	state = FUNC0(graphics->blend_state_stack);
	if (!state)
		return;

	FUNC3(state->enabled);
	FUNC2(state->src_c, state->dest_c, state->src_a,
				   state->dest_a);

	FUNC1(graphics->blend_state_stack);
}