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
typedef  int /*<<< orphan*/  obs_data_t ;

/* Variables and functions */
 int /*<<< orphan*/  SETTING_COLOR_TYPE ; 
 int /*<<< orphan*/  SETTING_KEY_COLOR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 char* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (char const*,char*) ; 

__attribute__((used)) static bool FUNC5(obs_properties_t *props, obs_property_t *p,
			     obs_data_t *settings)
{
	const char *type = FUNC1(settings, SETTING_COLOR_TYPE);
	bool custom = FUNC4(type, "custom") == 0;

	FUNC3(FUNC2(props, SETTING_KEY_COLOR),
				 custom);

	FUNC0(p);
	return true;
}