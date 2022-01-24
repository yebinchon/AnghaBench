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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 size_t FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  pulse_input_info ; 
 int /*<<< orphan*/  pulse_output_info ; 
 int /*<<< orphan*/  FUNC8 () ; 

__attribute__((used)) static obs_properties_t *FUNC9(bool input)
{
	obs_properties_t *props = FUNC2();
	obs_property_t *devices = FUNC1(
		props, "device_id", FUNC0("Device"),
		OBS_COMBO_TYPE_LIST, OBS_COMBO_FORMAT_STRING);

	FUNC7();
	if (input)
		FUNC6(pulse_input_info, (void *)devices);
	else
		FUNC5(pulse_output_info, (void *)devices);
	FUNC8();

	size_t count = FUNC4(devices);

	if (count > 0)
		FUNC3(
			devices, 0, FUNC0("Default"), "default");

	return props;
}