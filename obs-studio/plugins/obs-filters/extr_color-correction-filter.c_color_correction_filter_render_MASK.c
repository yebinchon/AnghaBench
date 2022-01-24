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
struct color_correction_filter_data {int /*<<< orphan*/  effect; int /*<<< orphan*/  context; int /*<<< orphan*/  final_matrix; int /*<<< orphan*/  final_matrix_param; int /*<<< orphan*/  gamma; int /*<<< orphan*/  gamma_param; } ;
typedef  int /*<<< orphan*/  gs_effect_t ;

/* Variables and functions */
 int /*<<< orphan*/  GS_RGBA ; 
 int /*<<< orphan*/  OBS_ALLOW_DIRECT_RENDERING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(void *data, gs_effect_t *effect)
{
	struct color_correction_filter_data *filter = data;

	if (!FUNC3(filter->context, GS_RGBA,
					     OBS_ALLOW_DIRECT_RENDERING))
		return;

	/* Now pass the interface variables to the .effect file. */
	FUNC2(filter->gamma_param, &filter->gamma);
	FUNC1(filter->final_matrix_param,
			      &filter->final_matrix);

	FUNC4(filter->context, filter->effect, 0, 0);

	FUNC0(effect);
}