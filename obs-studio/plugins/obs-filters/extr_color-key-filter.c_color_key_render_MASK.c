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
struct color_key_filter_data {int /*<<< orphan*/  effect; int /*<<< orphan*/  context; int /*<<< orphan*/  smoothness; int /*<<< orphan*/  smoothness_param; int /*<<< orphan*/  similarity; int /*<<< orphan*/  similarity_param; int /*<<< orphan*/  key_color; int /*<<< orphan*/  key_color_param; int /*<<< orphan*/  gamma; int /*<<< orphan*/  gamma_param; int /*<<< orphan*/  brightness; int /*<<< orphan*/  brightness_param; int /*<<< orphan*/  contrast; int /*<<< orphan*/  contrast_param; int /*<<< orphan*/  color; int /*<<< orphan*/  color_param; } ;
typedef  int /*<<< orphan*/  gs_effect_t ;

/* Variables and functions */
 int /*<<< orphan*/  GS_RGBA ; 
 int /*<<< orphan*/  OBS_ALLOW_DIRECT_RENDERING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(void *data, gs_effect_t *effect)
{
	struct color_key_filter_data *filter = data;

	if (!FUNC3(filter->context, GS_RGBA,
					     OBS_ALLOW_DIRECT_RENDERING))
		return;

	FUNC2(filter->color_param, &filter->color);
	FUNC1(filter->contrast_param, filter->contrast);
	FUNC1(filter->brightness_param, filter->brightness);
	FUNC1(filter->gamma_param, filter->gamma);
	FUNC2(filter->key_color_param, &filter->key_color);
	FUNC1(filter->similarity_param, filter->similarity);
	FUNC1(filter->smoothness_param, filter->smoothness);

	FUNC4(filter->context, filter->effect, 0, 0);

	FUNC0(effect);
}