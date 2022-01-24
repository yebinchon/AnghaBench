#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct gs_effect {struct gs_effect* next; } ;
struct TYPE_7__ {int /*<<< orphan*/  (* device_destroy ) (scalar_t__) ;int /*<<< orphan*/  (* gs_vertexbuffer_destroy ) (int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* device_enter_context ) (scalar_t__) ;} ;
struct TYPE_8__ {scalar_t__ module; int /*<<< orphan*/  blend_state_stack; int /*<<< orphan*/  viewport_stack; int /*<<< orphan*/  matrix_stack; int /*<<< orphan*/  effect_mutex; int /*<<< orphan*/  mutex; scalar_t__ device; TYPE_1__ exports; int /*<<< orphan*/  immediate_vertbuffer; int /*<<< orphan*/  sprite_buffer; struct gs_effect* first_effect; } ;
typedef  TYPE_2__ graphics_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct gs_effect*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__) ; 
 TYPE_2__* thread_graphics ; 

void FUNC12(graphics_t *graphics)
{
	if (!FUNC7(graphics, "gs_destroy"))
		return;

	while (thread_graphics)
		FUNC4();

	if (graphics->device) {
		struct gs_effect *effect = graphics->first_effect;

		thread_graphics = graphics;
		graphics->exports.device_enter_context(graphics->device);

		while (effect) {
			struct gs_effect *next = effect->next;
			FUNC2(effect);
			effect = next;
		}

		graphics->exports.gs_vertexbuffer_destroy(
			graphics->sprite_buffer);
		graphics->exports.gs_vertexbuffer_destroy(
			graphics->immediate_vertbuffer);
		graphics->exports.device_destroy(graphics->device);

		thread_graphics = NULL;
	}

	FUNC6(&graphics->mutex);
	FUNC6(&graphics->effect_mutex);
	FUNC1(graphics->matrix_stack);
	FUNC1(graphics->viewport_stack);
	FUNC1(graphics->blend_state_stack);
	if (graphics->module)
		FUNC5(graphics->module);
	FUNC0(graphics);

	FUNC3();
}