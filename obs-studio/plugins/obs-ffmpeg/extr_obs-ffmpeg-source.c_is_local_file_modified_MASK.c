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
 int FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static bool FUNC4(obs_properties_t *props,
				   obs_property_t *prop, obs_data_t *settings)
{
	FUNC0(prop);

	bool enabled = FUNC1(settings, "is_local_file");
	obs_property_t *input = FUNC2(props, "input");
	obs_property_t *input_format =
		FUNC2(props, "input_format");
	obs_property_t *local_file = FUNC2(props, "local_file");
	obs_property_t *looping = FUNC2(props, "looping");
	obs_property_t *buffering = FUNC2(props, "buffering_mb");
	obs_property_t *close =
		FUNC2(props, "close_when_inactive");
	obs_property_t *seekable = FUNC2(props, "seekable");
	obs_property_t *speed = FUNC2(props, "speed_percent");
	FUNC3(input, !enabled);
	FUNC3(input_format, !enabled);
	FUNC3(buffering, !enabled);
	FUNC3(close, enabled);
	FUNC3(local_file, enabled);
	FUNC3(looping, enabled);
	FUNC3(speed, enabled);
	FUNC3(seekable, !enabled);

	return true;
}