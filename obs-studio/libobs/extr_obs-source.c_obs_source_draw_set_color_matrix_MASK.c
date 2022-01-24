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
struct vec3 {int dummy; } ;
struct matrix4 {int dummy; } ;
typedef  int /*<<< orphan*/  gs_eparam_t ;
typedef  int /*<<< orphan*/  gs_effect_t ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_WARNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct matrix4 const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct vec3 const*,int) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct matrix4 const*,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct vec3*,float,float,float) ; 

void FUNC7(const struct matrix4 *color_matrix,
				      const struct vec3 *color_range_min,
				      const struct vec3 *color_range_max)
{
	struct vec3 color_range_min_def;
	struct vec3 color_range_max_def;

	FUNC6(&color_range_min_def, 0.0f, 0.0f, 0.0f);
	FUNC6(&color_range_max_def, 1.0f, 1.0f, 1.0f);

	gs_effect_t *effect = FUNC4();
	gs_eparam_t *matrix;
	gs_eparam_t *range_min;
	gs_eparam_t *range_max;

	if (!effect) {
		FUNC0(LOG_WARNING, "obs_source_draw_set_color_matrix: no "
				  "active effect!");
		return;
	}

	if (!FUNC5(color_matrix, "obs_source_draw_set_color_matrix"))
		return;

	if (!color_range_min)
		color_range_min = &color_range_min_def;
	if (!color_range_max)
		color_range_max = &color_range_max_def;

	matrix = FUNC1(effect, "color_matrix");
	range_min = FUNC1(effect, "color_range_min");
	range_max = FUNC1(effect, "color_range_max");

	FUNC2(matrix, color_matrix);
	FUNC3(range_min, color_range_min, sizeof(float) * 3);
	FUNC3(range_max, color_range_max, sizeof(float) * 3);
}