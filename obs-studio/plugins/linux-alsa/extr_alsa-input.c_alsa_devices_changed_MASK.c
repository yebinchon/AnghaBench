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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 char* FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC5 (char const*,char*) ; 

__attribute__((used)) static bool FUNC6(obs_properties_t *props, obs_property_t *p,
				 obs_data_t *settings)
{
	FUNC0(p);
	bool visible = false;
	const char *device_id = FUNC1(settings, "device_id");

	if (FUNC5(device_id, "__custom__") == 0)
		visible = true;

	obs_property_t *custom_pcm = FUNC2(props, "custom_pcm");

	FUNC4(custom_pcm, visible);
	FUNC3(custom_pcm, settings);

	return true;
}