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
struct crop_filter_data {int /*<<< orphan*/  height; int /*<<< orphan*/  width; int /*<<< orphan*/  effect; int /*<<< orphan*/  context; int /*<<< orphan*/  add_val; int /*<<< orphan*/  param_add; int /*<<< orphan*/  mul_val; int /*<<< orphan*/  param_mul; } ;
typedef  int /*<<< orphan*/  gs_effect_t ;

/* Variables and functions */
 int /*<<< orphan*/  GS_RGBA ; 
 int /*<<< orphan*/  OBS_NO_DIRECT_RENDERING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(void *data, gs_effect_t *effect)
{
	struct crop_filter_data *filter = data;

	if (!FUNC2(filter->context, GS_RGBA,
					     OBS_NO_DIRECT_RENDERING))
		return;

	FUNC1(filter->param_mul, &filter->mul_val);
	FUNC1(filter->param_add, &filter->add_val);

	FUNC3(filter->context, filter->effect,
				      filter->width, filter->height);

	FUNC0(effect);
}