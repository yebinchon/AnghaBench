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
struct chroma_key_filter_data {int /*<<< orphan*/  effect; int /*<<< orphan*/  context; int /*<<< orphan*/  spill; int /*<<< orphan*/  spill_param; int /*<<< orphan*/  smoothness; int /*<<< orphan*/  smoothness_param; int /*<<< orphan*/  similarity; int /*<<< orphan*/  similarity_param; int /*<<< orphan*/  pixel_size_param; struct vec2 chroma; int /*<<< orphan*/  chroma_param; int /*<<< orphan*/  gamma; int /*<<< orphan*/  gamma_param; int /*<<< orphan*/  brightness; int /*<<< orphan*/  brightness_param; int /*<<< orphan*/  contrast; int /*<<< orphan*/  contrast_param; int /*<<< orphan*/  color; int /*<<< orphan*/  color_param; } ;
typedef  int /*<<< orphan*/  obs_source_t ;
typedef  int /*<<< orphan*/  gs_effect_t ;

/* Variables and functions */
 int /*<<< orphan*/  GS_RGBA ; 
 int /*<<< orphan*/  OBS_ALLOW_DIRECT_RENDERING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct vec2*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct vec2*,float,float) ; 

__attribute__((used)) static void FUNC10(void *data, gs_effect_t *effect)
{
	struct chroma_key_filter_data *filter = data;
	obs_source_t *target = FUNC4(filter->context);
	uint32_t width = FUNC6(target);
	uint32_t height = FUNC5(target);
	struct vec2 pixel_size;

	if (!FUNC7(filter->context, GS_RGBA,
					     OBS_ALLOW_DIRECT_RENDERING))
		return;

	FUNC9(&pixel_size, 1.0f / (float)width, 1.0f / (float)height);

	FUNC3(filter->color_param, &filter->color);
	FUNC1(filter->contrast_param, filter->contrast);
	FUNC1(filter->brightness_param, filter->brightness);
	FUNC1(filter->gamma_param, filter->gamma);
	FUNC2(filter->chroma_param, &filter->chroma);
	FUNC2(filter->pixel_size_param, &pixel_size);
	FUNC1(filter->similarity_param, filter->similarity);
	FUNC1(filter->smoothness_param, filter->smoothness);
	FUNC1(filter->spill_param, filter->spill);

	FUNC8(filter->context, filter->effect, 0, 0);

	FUNC0(effect);
}