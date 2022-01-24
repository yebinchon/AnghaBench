#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  obs_property_t ;
typedef  int /*<<< orphan*/  obs_properties_t ;
typedef  int /*<<< orphan*/  obs_data_t ;
struct TYPE_2__ {int /*<<< orphan*/  source; } ;

/* Variables and functions */
 int /*<<< orphan*/  OBS_COMBO_FORMAT_INT ; 
 int /*<<< orphan*/  OBS_COMBO_FORMAT_STRING ; 
 int /*<<< orphan*/  OBS_COMBO_TYPE_LIST ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  VIDEO_RANGE_DEFAULT ; 
 int /*<<< orphan*/  VIDEO_RANGE_FULL ; 
 int /*<<< orphan*/  VIDEO_RANGE_PARTIAL ; 
 TYPE_1__* data ; 
 int /*<<< orphan*/  device_selected ; 
 int /*<<< orphan*/  format_selected ; 
 int /*<<< orphan*/  input_selected ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  resolution_selected ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static obs_properties_t *FUNC11(void *vptr)
{
	FUNC0(vptr);

	obs_properties_t *props = FUNC5();

	obs_property_t *device_list = FUNC4(
		props, "device_id", FUNC2("Device"),
		OBS_COMBO_TYPE_LIST, OBS_COMBO_FORMAT_STRING);

	obs_property_t *input_list = FUNC4(
		props, "input", FUNC2("Input"), OBS_COMBO_TYPE_LIST,
		OBS_COMBO_FORMAT_INT);

	obs_property_t *format_list = FUNC4(
		props, "pixelformat", FUNC2("VideoFormat"),
		OBS_COMBO_TYPE_LIST, OBS_COMBO_FORMAT_INT);

	obs_property_t *standard_list = FUNC4(
		props, "standard", FUNC2("VideoStandard"),
		OBS_COMBO_TYPE_LIST, OBS_COMBO_FORMAT_INT);
	FUNC8(standard_list, false);

	obs_property_t *dv_timing_list = FUNC4(
		props, "dv_timing", FUNC2("DVTiming"),
		OBS_COMBO_TYPE_LIST, OBS_COMBO_FORMAT_INT);
	FUNC8(dv_timing_list, false);

	obs_property_t *resolution_list = FUNC4(
		props, "resolution", FUNC2("Resolution"),
		OBS_COMBO_TYPE_LIST, OBS_COMBO_FORMAT_INT);

	FUNC4(props, "framerate",
				FUNC2("FrameRate"),
				OBS_COMBO_TYPE_LIST, OBS_COMBO_FORMAT_INT);

	obs_property_t *color_range_list = FUNC4(
		props, "color_range", FUNC2("ColorRange"),
		OBS_COMBO_TYPE_LIST, OBS_COMBO_FORMAT_INT);
	FUNC6(color_range_list,
				  FUNC2("ColorRange.Default"),
				  VIDEO_RANGE_DEFAULT);
	FUNC6(color_range_list,
				  FUNC2("ColorRange.Partial"),
				  VIDEO_RANGE_PARTIAL);
	FUNC6(color_range_list,
				  FUNC2("ColorRange.Full"),
				  VIDEO_RANGE_FULL);

	FUNC3(props, "buffering",
				FUNC2("UseBuffering"));

	obs_data_t *settings = FUNC9(data->source);
	FUNC10(device_list, settings);
	FUNC1(settings);

	FUNC7(device_list, device_selected);
	FUNC7(input_list, input_selected);
	FUNC7(format_list, format_selected);
	FUNC7(resolution_list,
					   resolution_selected);

	return props;
}