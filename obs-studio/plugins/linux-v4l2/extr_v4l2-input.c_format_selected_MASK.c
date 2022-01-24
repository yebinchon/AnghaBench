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
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  obs_property_t ;
typedef  int /*<<< orphan*/  obs_properties_t ;
typedef  int /*<<< orphan*/  obs_data_t ;

/* Variables and functions */
 int O_NONBLOCK ; 
 int O_RDWR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int V4L2_IN_CAP_DV_TIMINGS ; 
 int V4L2_IN_CAP_STD ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int,int,int*) ; 
 int FUNC9 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC12(obs_properties_t *props, obs_property_t *p,
			    obs_data_t *settings)
{
	FUNC0(p);
	int dev = FUNC9(FUNC2(settings, "device_id"),
			    O_RDWR | O_NONBLOCK);
	if (dev == -1)
		return false;

	int input = (int)FUNC1(settings, "input");
	uint32_t caps = 0;
	if (FUNC8(dev, input, &caps) < 0)
		return false;
	caps &= V4L2_IN_CAP_STD | V4L2_IN_CAP_DV_TIMINGS;

	obs_property_t *resolution = FUNC3(props, "resolution");
	obs_property_t *framerate = FUNC3(props, "framerate");
	obs_property_t *standard = FUNC3(props, "standard");
	obs_property_t *dv_timing = FUNC3(props, "dv_timing");

	FUNC5(resolution, (!caps) ? true : false);
	FUNC5(framerate, (!caps) ? true : false);
	FUNC5(standard,
				 (caps & V4L2_IN_CAP_STD) ? true : false);
	FUNC5(
		dv_timing, (caps & V4L2_IN_CAP_DV_TIMINGS) ? true : false);

	if (!caps) {
		FUNC10(dev,
				     FUNC1(settings, "pixelformat"),
				     resolution);
	}
	if (caps & V4L2_IN_CAP_STD)
		FUNC11(dev, standard);
	if (caps & V4L2_IN_CAP_DV_TIMINGS)
		FUNC7(dev, dv_timing);

	FUNC6(dev);

	if (!caps)
		FUNC4(resolution, settings);
	if (caps & V4L2_IN_CAP_STD)
		FUNC4(standard, settings);
	if (caps & V4L2_IN_CAP_DV_TIMINGS)
		FUNC4(dv_timing, settings);

	return true;
}