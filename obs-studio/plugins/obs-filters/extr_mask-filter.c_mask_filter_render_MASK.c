#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct vec2 {float member_0; float member_1; float x; float y; } ;
struct mask_filter_data {int /*<<< orphan*/  effect; int /*<<< orphan*/  context; int /*<<< orphan*/  color; int /*<<< orphan*/  target; scalar_t__ lock_aspect; } ;
typedef  int /*<<< orphan*/  obs_source_t ;
typedef  int /*<<< orphan*/  gs_eparam_t ;
typedef  int /*<<< orphan*/  gs_effect_t ;

/* Variables and functions */
 int /*<<< orphan*/  GS_RGBA ; 
 int /*<<< orphan*/  OBS_ALLOW_DIRECT_RENDERING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct vec2*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct vec2*,struct vec2*,struct vec2*) ; 
 int /*<<< orphan*/  FUNC14 (struct vec2*,struct vec2*,float) ; 
 int /*<<< orphan*/  FUNC15 (struct vec2*,struct vec2*) ; 
 int /*<<< orphan*/  FUNC16 (struct vec2*,struct vec2*,struct vec2*) ; 

__attribute__((used)) static void FUNC17(void *data, gs_effect_t *effect)
{
	struct mask_filter_data *filter = data;
	obs_source_t *target = FUNC7(filter->context);
	gs_eparam_t *param;
	struct vec2 add_val = {0};
	struct vec2 mul_val = {1.0f, 1.0f};

	if (!target || !filter->target || !filter->effect) {
		FUNC12(filter->context);
		return;
	}

	if (filter->lock_aspect) {
		struct vec2 source_size;
		struct vec2 mask_size;
		struct vec2 mask_temp;
		float source_aspect;
		float mask_aspect;
		bool size_to_x;
		float fix;

		source_size.x = (float)FUNC9(target);
		source_size.y = (float)FUNC8(target);
		mask_size.x = (float)FUNC6(filter->target);
		mask_size.y = (float)FUNC5(filter->target);

		source_aspect = source_size.x / source_size.y;
		mask_aspect = mask_size.x / mask_size.y;
		size_to_x = (source_aspect < mask_aspect);

		fix = size_to_x ? (source_size.x / mask_size.x)
				: (source_size.y / mask_size.y);

		FUNC14(&mask_size, &mask_size, fix);
		FUNC13(&mul_val, &source_size, &mask_size);
		FUNC14(&source_size, &source_size, 0.5f);
		FUNC14(&mask_temp, &mask_size, 0.5f);
		FUNC16(&add_val, &source_size, &mask_temp);
		FUNC15(&add_val, &add_val);
		FUNC13(&add_val, &add_val, &mask_size);
	}

	if (!FUNC10(filter->context, GS_RGBA,
					     OBS_ALLOW_DIRECT_RENDERING))
		return;

	param = FUNC1(filter->effect, "target");
	FUNC2(param, filter->target);

	param = FUNC1(filter->effect, "color");
	FUNC4(param, &filter->color);

	param = FUNC1(filter->effect, "mul_val");
	FUNC3(param, &mul_val);

	param = FUNC1(filter->effect, "add_val");
	FUNC3(param, &add_val);

	FUNC11(filter->context, filter->effect, 0, 0);

	FUNC0(effect);
}