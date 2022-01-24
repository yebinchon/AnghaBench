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
typedef  int /*<<< orphan*/  obs_property_t ;
typedef  int /*<<< orphan*/  obs_properties_t ;

/* Variables and functions */
 int /*<<< orphan*/  OBS_COMBO_FORMAT_STRING ; 
 int /*<<< orphan*/  OBS_COMBO_TYPE_LIST ; 
 int /*<<< orphan*/  SETTING_BRIGHTNESS ; 
 int /*<<< orphan*/  SETTING_COLOR_TYPE ; 
 int /*<<< orphan*/  SETTING_CONTRAST ; 
 int /*<<< orphan*/  SETTING_GAMMA ; 
 int /*<<< orphan*/  SETTING_KEY_COLOR ; 
 int /*<<< orphan*/  SETTING_OPACITY ; 
 int /*<<< orphan*/  SETTING_SIMILARITY ; 
 int /*<<< orphan*/  SETTING_SMOOTHNESS ; 
 int /*<<< orphan*/  TEXT_BRIGHTNESS ; 
 int /*<<< orphan*/  TEXT_COLOR_TYPE ; 
 int /*<<< orphan*/  TEXT_CONTRAST ; 
 int /*<<< orphan*/  TEXT_GAMMA ; 
 int /*<<< orphan*/  TEXT_KEY_COLOR ; 
 int /*<<< orphan*/  TEXT_OPACITY ; 
 int /*<<< orphan*/  TEXT_SIMILARITY ; 
 int /*<<< orphan*/  TEXT_SMOOTHNESS ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  key_type_changed ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,double,double,double) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static obs_properties_t *FUNC9(void *data)
{
	obs_properties_t *props = FUNC6();

	obs_property_t *p = FUNC5(props, SETTING_COLOR_TYPE,
						    TEXT_COLOR_TYPE,
						    OBS_COMBO_TYPE_LIST,
						    OBS_COMBO_FORMAT_STRING);
	FUNC7(p, FUNC1("Green"), "green");
	FUNC7(p, FUNC1("Blue"), "blue");
	FUNC7(p, FUNC1("Red"), "red");
	FUNC7(p, FUNC1("Magenta"), "magenta");
	FUNC7(p, FUNC1("CustomColor"),
				     "custom");

	FUNC8(p, key_type_changed);

	FUNC2(props, SETTING_KEY_COLOR, TEXT_KEY_COLOR);
	FUNC4(props, SETTING_SIMILARITY,
				      TEXT_SIMILARITY, 1, 1000, 1);
	FUNC4(props, SETTING_SMOOTHNESS,
				      TEXT_SMOOTHNESS, 1, 1000, 1);

	FUNC4(props, SETTING_OPACITY, TEXT_OPACITY, 0,
				      100, 1);
	FUNC3(props, SETTING_CONTRAST, TEXT_CONTRAST,
					-1.0, 1.0, 0.01);
	FUNC3(props, SETTING_BRIGHTNESS,
					TEXT_BRIGHTNESS, -1.0, 1.0, 0.01);
	FUNC3(props, SETTING_GAMMA, TEXT_GAMMA, -1.0,
					1.0, 0.01);

	FUNC0(data);
	return props;
}