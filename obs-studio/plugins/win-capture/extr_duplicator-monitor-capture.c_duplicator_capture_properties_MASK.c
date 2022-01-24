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
 int /*<<< orphan*/  OBS_COMBO_FORMAT_INT ; 
 int /*<<< orphan*/  OBS_COMBO_TYPE_LIST ; 
 int /*<<< orphan*/  TEXT_CAPTURE_CURSOR ; 
 int /*<<< orphan*/  TEXT_MONITOR ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 () ; 

__attribute__((used)) static obs_properties_t *FUNC7(void *unused)
{
	int monitor_idx = 0;

	FUNC0(unused);

	obs_properties_t *props = FUNC6();

	obs_property_t *monitors = FUNC5(
		props, "monitor", TEXT_MONITOR, OBS_COMBO_TYPE_LIST,
		OBS_COMBO_FORMAT_INT);

	FUNC4(props, "capture_cursor", TEXT_CAPTURE_CURSOR);

	FUNC2();

	while (FUNC1(monitors, monitor_idx++))
		;

	FUNC3();

	return props;
}