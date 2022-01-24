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
 int /*<<< orphan*/  SETTING_CAPTURE_WINDOW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char const*) ; 
 char* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (char const*,char const*) ; 

__attribute__((used)) static bool FUNC5(obs_properties_t *ppts, obs_property_t *p,
				    obs_data_t *settings)
{
	const char *cur_val;
	bool match = false;
	size_t i = 0;

	cur_val = FUNC2(settings, SETTING_CAPTURE_WINDOW);
	if (!cur_val) {
		return false;
	}

	for (;;) {
		const char *val = FUNC3(p, i++);
		if (!val)
			break;

		if (FUNC4(val, cur_val) == 0) {
			match = true;
			break;
		}
	}

	if (cur_val && *cur_val && !match) {
		FUNC1(p, cur_val);
		return true;
	}

	FUNC0(ppts);
	return false;
}