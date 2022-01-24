#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  texture; } ;
struct lut_filter_data {char* file; float clut_amount; int /*<<< orphan*/  effect; TYPE_1__ image; int /*<<< orphan*/  target; } ;
typedef  int /*<<< orphan*/  obs_data_t ;

/* Variables and functions */
 int /*<<< orphan*/  SETTING_CLUT_AMOUNT ; 
 int /*<<< orphan*/  SETTING_IMAGE_PATH ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char const*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 double FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 char* FUNC11 (char*) ; 

__attribute__((used)) static void FUNC12(void *data, obs_data_t *settings)
{
	struct lut_filter_data *filter = data;

	const char *path = FUNC8(settings, SETTING_IMAGE_PATH);
	double clut_amount = FUNC7(settings, SETTING_CLUT_AMOUNT);

	FUNC0(filter->file);
	if (path)
		filter->file = FUNC1(path);
	else
		filter->file = NULL;

	FUNC9();
	FUNC4(&filter->image);
	FUNC10();

	FUNC5(&filter->image, path);

	FUNC9();

	FUNC6(&filter->image);

	filter->target = filter->image.texture;
	filter->clut_amount = (float)clut_amount;

	char *effect_path = FUNC11("color_grade_filter.effect");
	FUNC3(filter->effect);
	filter->effect = FUNC2(effect_path, NULL);
	FUNC0(effect_path);

	FUNC10();
}