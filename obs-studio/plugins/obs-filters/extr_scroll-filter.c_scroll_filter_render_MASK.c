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
typedef  scalar_t__ uint32_t ;
struct vec2 {int dummy; } ;
struct scroll_filter_data {int /*<<< orphan*/  effect; int /*<<< orphan*/  context; int /*<<< orphan*/  sampler; int /*<<< orphan*/  param_image; int /*<<< orphan*/  param_mul; struct vec2 offset; int /*<<< orphan*/  param_add; struct vec2 size_i; scalar_t__ cy; scalar_t__ limit_cy; scalar_t__ cx; scalar_t__ limit_cx; } ;
typedef  int /*<<< orphan*/  obs_source_t ;
typedef  int /*<<< orphan*/  gs_effect_t ;

/* Variables and functions */
 int /*<<< orphan*/  GS_RGBA ; 
 int /*<<< orphan*/  OBS_NO_DIRECT_RENDERING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct vec2*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct vec2*,float,float) ; 
 int /*<<< orphan*/  FUNC10 (struct vec2*) ; 

__attribute__((used)) static void FUNC11(void *data, gs_effect_t *effect)
{
	struct scroll_filter_data *filter = data;
	struct vec2 mul_val;
	uint32_t base_cx;
	uint32_t base_cy;
	uint32_t cx;
	uint32_t cy;

	obs_source_t *target = FUNC3(filter->context);
	base_cx = FUNC5(target);
	base_cy = FUNC4(target);

	cx = filter->limit_cx ? filter->cx : base_cx;
	cy = filter->limit_cy ? filter->cy : base_cy;

	if (base_cx && base_cy) {
		FUNC9(&filter->size_i, 1.0f / (float)base_cx,
			 1.0f / (float)base_cy);
	} else {
		FUNC10(&filter->size_i);
		FUNC8(filter->context);
		return;
	}

	FUNC9(&mul_val, (float)cx / (float)base_cx,
		 (float)cy / (float)base_cy);

	if (!FUNC6(filter->context, GS_RGBA,
					     OBS_NO_DIRECT_RENDERING))
		return;

	FUNC2(filter->param_add, &filter->offset);
	FUNC2(filter->param_mul, &mul_val);

	FUNC1(filter->param_image, filter->sampler);

	FUNC7(filter->context, filter->effect, cx, cy);

	FUNC0(effect);
}