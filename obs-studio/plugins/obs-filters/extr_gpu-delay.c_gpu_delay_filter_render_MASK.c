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
typedef  int uint32_t ;
struct vec4 {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  size; } ;
struct gpu_delay_filter_data {int processed_frame; TYPE_1__ frames; scalar_t__ cy; scalar_t__ cx; int /*<<< orphan*/  context; int /*<<< orphan*/  target_valid; } ;
struct frame {int /*<<< orphan*/  render; } ;
typedef  int /*<<< orphan*/  obs_source_t ;
typedef  int /*<<< orphan*/  gs_effect_t ;
typedef  int /*<<< orphan*/  frame ;

/* Variables and functions */
 int /*<<< orphan*/  GS_BLEND_ONE ; 
 int /*<<< orphan*/  GS_BLEND_ZERO ; 
 int /*<<< orphan*/  GS_CLEAR_COLOR ; 
 int OBS_SOURCE_ASYNC ; 
 int OBS_SOURCE_CUSTOM_DRAW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,struct frame*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,struct frame*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct gpu_delay_filter_data*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct vec4*,float,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (float,float,float,float,float,float) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (struct vec4*) ; 

__attribute__((used)) static void FUNC19(void *data, gs_effect_t *effect)
{
	struct gpu_delay_filter_data *f = data;
	obs_source_t *target = FUNC13(f->context);
	obs_source_t *parent = FUNC12(f->context);

	if (!f->target_valid || !target || !parent || !f->frames.size) {
		FUNC16(f->context);
		return;
	}

	if (f->processed_frame) {
		FUNC3(f);
		return;
	}

	struct frame frame;
	FUNC1(&f->frames, &frame, sizeof(frame));

	FUNC11(frame.render);

	FUNC6();
	FUNC4(GS_BLEND_ONE, GS_BLEND_ZERO);

	if (FUNC9(frame.render, f->cx, f->cy)) {
		uint32_t parent_flags = FUNC15(target);
		bool custom_draw = (parent_flags & OBS_SOURCE_CUSTOM_DRAW) != 0;
		bool async = (parent_flags & OBS_SOURCE_ASYNC) != 0;
		struct vec4 clear_color;

		FUNC18(&clear_color);
		FUNC7(GS_CLEAR_COLOR, &clear_color, 0.0f, 0);
		FUNC8(0.0f, (float)f->cx, 0.0f, (float)f->cy, -100.0f,
			 100.0f);

		if (target == parent && !custom_draw && !async)
			FUNC14(target);
		else
			FUNC17(target);

		FUNC10(frame.render);
	}

	FUNC5();

	FUNC2(&f->frames, &frame, sizeof(frame));
	FUNC3(f);
	f->processed_frame = true;

	FUNC0(effect);
}