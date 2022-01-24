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
 int O_NONBLOCK ; 
 int O_RDWR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int*,int*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC9(obs_properties_t *props, obs_property_t *p,
				obs_data_t *settings)
{
	FUNC0(p);
	int width, height;
	int dev = FUNC7(FUNC2(settings, "device_id"),
			    O_RDWR | O_NONBLOCK);
	if (dev == -1)
		return false;

	obs_property_t *prop = FUNC3(props, "framerate");
	FUNC8(&width, &height,
			  FUNC1(settings, "resolution"));
	FUNC6(dev, FUNC1(settings, "pixelformat"),
			    width, height, prop);
	FUNC5(dev);

	FUNC4(prop, settings);

	return true;
}