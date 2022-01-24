#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct matrix4 {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* device_leave_context ) (int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* device_blend_function_separate ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,void*) ;int /*<<< orphan*/  (* device_enter_context ) (int /*<<< orphan*/ ) ;} ;
struct TYPE_3__ {int enabled; void* dest_a; int /*<<< orphan*/  src_a; void* dest_c; int /*<<< orphan*/  src_c; } ;
struct graphics_subsystem {int /*<<< orphan*/  device; TYPE_2__ exports; TYPE_1__ cur_blend_state; int /*<<< orphan*/  effect_mutex; int /*<<< orphan*/  mutex; int /*<<< orphan*/  matrix_stack; } ;

/* Variables and functions */
 void* GS_BLEND_INVSRCALPHA ; 
 int /*<<< orphan*/  GS_BLEND_ONE ; 
 int /*<<< orphan*/  GS_BLEND_SRCALPHA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct matrix4*) ; 
 int /*<<< orphan*/  FUNC1 (struct graphics_subsystem*) ; 
 int /*<<< orphan*/  FUNC2 (struct graphics_subsystem*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct matrix4*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC9(struct graphics_subsystem *graphics)
{
	struct matrix4 top_mat;

	FUNC4(&top_mat);
	FUNC0(graphics->matrix_stack, &top_mat);

	graphics->exports.device_enter_context(graphics->device);

	if (!FUNC1(graphics))
		return false;
	if (!FUNC2(graphics))
		return false;
	if (FUNC5(&graphics->mutex, NULL) != 0)
		return false;
	if (FUNC5(&graphics->effect_mutex, NULL) != 0)
		return false;

	graphics->exports.device_blend_function_separate(
		graphics->device, GS_BLEND_SRCALPHA, GS_BLEND_INVSRCALPHA,
		GS_BLEND_ONE, GS_BLEND_INVSRCALPHA);
	graphics->cur_blend_state.enabled = true;
	graphics->cur_blend_state.src_c = GS_BLEND_SRCALPHA;
	graphics->cur_blend_state.dest_c = GS_BLEND_INVSRCALPHA;
	graphics->cur_blend_state.src_a = GS_BLEND_ONE;
	graphics->cur_blend_state.dest_a = GS_BLEND_INVSRCALPHA;

	graphics->exports.device_leave_context(graphics->device);

	FUNC3();
	return true;
}