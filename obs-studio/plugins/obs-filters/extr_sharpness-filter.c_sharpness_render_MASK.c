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
struct sharpness_data {float texwidth; float texheight; float sharpness; int /*<<< orphan*/  effect; int /*<<< orphan*/  context; int /*<<< orphan*/  texture_height; int /*<<< orphan*/  texture_width; int /*<<< orphan*/  sharpness_param; } ;
typedef  int /*<<< orphan*/  gs_effect_t ;

/* Variables and functions */
 int /*<<< orphan*/  GS_RGBA ; 
 int /*<<< orphan*/  OBS_ALLOW_DIRECT_RENDERING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,float) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(void *data, gs_effect_t *effect)
{
	struct sharpness_data *filter = data;

	if (!FUNC5(filter->context, GS_RGBA,
					     OBS_ALLOW_DIRECT_RENDERING))
		return;

	filter->texwidth = (float)FUNC4(
		FUNC2(filter->context));
	filter->texheight = (float)FUNC3(
		FUNC2(filter->context));

	FUNC1(filter->sharpness_param, filter->sharpness);
	FUNC1(filter->texture_width, filter->texwidth);
	FUNC1(filter->texture_height, filter->texheight);

	FUNC6(filter->context, filter->effect, 0, 0);

	FUNC0(effect);
}