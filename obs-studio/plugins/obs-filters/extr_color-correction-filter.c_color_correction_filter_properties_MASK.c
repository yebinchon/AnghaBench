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
typedef  int /*<<< orphan*/  obs_properties_t ;

/* Variables and functions */
 int /*<<< orphan*/  SETTING_BRIGHTNESS ; 
 int /*<<< orphan*/  SETTING_COLOR ; 
 int /*<<< orphan*/  SETTING_CONTRAST ; 
 int /*<<< orphan*/  SETTING_GAMMA ; 
 int /*<<< orphan*/  SETTING_HUESHIFT ; 
 int /*<<< orphan*/  SETTING_OPACITY ; 
 int /*<<< orphan*/  SETTING_SATURATION ; 
 int /*<<< orphan*/  TEXT_BRIGHTNESS ; 
 int /*<<< orphan*/  TEXT_COLOR ; 
 int /*<<< orphan*/  TEXT_CONTRAST ; 
 int /*<<< orphan*/  TEXT_GAMMA ; 
 int /*<<< orphan*/  TEXT_HUESHIFT ; 
 int /*<<< orphan*/  TEXT_OPACITY ; 
 int /*<<< orphan*/  TEXT_SATURATION ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,double,double,double) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/ * FUNC4 () ; 

__attribute__((used)) static obs_properties_t *FUNC5(void *data)
{
	obs_properties_t *props = FUNC4();

	FUNC2(props, SETTING_GAMMA, TEXT_GAMMA, -3.0,
					3.0, 0.01);

	FUNC2(props, SETTING_CONTRAST, TEXT_CONTRAST,
					-2.0, 2.0, 0.01);
	FUNC2(props, SETTING_BRIGHTNESS,
					TEXT_BRIGHTNESS, -1.0, 1.0, 0.01);
	FUNC2(props, SETTING_SATURATION,
					TEXT_SATURATION, -1.0, 5.0, 0.01);
	FUNC2(props, SETTING_HUESHIFT, TEXT_HUESHIFT,
					-180.0, 180.0, 0.01);
	FUNC3(props, SETTING_OPACITY, TEXT_OPACITY, 0,
				      100, 1);

	FUNC1(props, SETTING_COLOR, TEXT_COLOR);

	FUNC0(data);
	return props;
}