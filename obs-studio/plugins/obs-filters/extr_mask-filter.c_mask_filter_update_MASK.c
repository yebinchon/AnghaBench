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
typedef  int uint32_t ;
struct mask_filter_data {char* image_file; int lock_aspect; int /*<<< orphan*/  effect; int /*<<< orphan*/  color; } ;
typedef  int /*<<< orphan*/  obs_data_t ;

/* Variables and functions */
 int /*<<< orphan*/  SETTING_COLOR ; 
 int /*<<< orphan*/  SETTING_IMAGE_PATH ; 
 int /*<<< orphan*/  SETTING_OPACITY ; 
 int /*<<< orphan*/  SETTING_STRETCH ; 
 int /*<<< orphan*/  SETTING_TYPE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mask_filter_data*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 char* FUNC10 (char const*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC12(void *data, obs_data_t *settings)
{
	struct mask_filter_data *filter = data;

	const char *path = FUNC7(settings, SETTING_IMAGE_PATH);
	const char *effect_file = FUNC7(settings, SETTING_TYPE);
	uint32_t color = (uint32_t)FUNC6(settings, SETTING_COLOR);
	int opacity = (int)FUNC6(settings, SETTING_OPACITY);
	char *effect_path;

	if (filter->image_file)
		FUNC0(filter->image_file);
	filter->image_file = FUNC1(path);

	color &= 0xFFFFFF;
	color |= (uint32_t)(((double)opacity) * 2.55) << 24;

	FUNC11(&filter->color, color);
	FUNC4(filter);
	filter->lock_aspect = !FUNC5(settings, SETTING_STRETCH);

	FUNC8();

	effect_path = FUNC10(effect_file);
	FUNC3(filter->effect);
	filter->effect = FUNC2(effect_path, NULL);
	FUNC0(effect_path);

	FUNC9();
}