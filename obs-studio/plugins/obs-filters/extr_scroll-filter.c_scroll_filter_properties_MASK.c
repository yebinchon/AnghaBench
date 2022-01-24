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
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  limit_cx_clicked ; 
 int /*<<< orphan*/  limit_cy_clicked ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,double,double,double) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/ * FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static obs_properties_t *FUNC7(void *data)
{
	obs_properties_t *props = FUNC5();
	obs_property_t *p;

	FUNC3(props, "speed_x",
					FUNC1("ScrollFilter.SpeedX"),
					-500.0, 500.0, 1.0);
	FUNC3(props, "speed_y",
					FUNC1("ScrollFilter.SpeedY"),
					-500.0, 500.0, 1.0);

	p = FUNC2(props, "limit_cx",
				    FUNC1("ScrollFilter.LimitWidth"));
	FUNC6(p, limit_cx_clicked);
	FUNC4(props, "cx", FUNC1("Crop.Width"), 1,
			       8192, 1);

	p = FUNC2(
		props, "limit_cy", FUNC1("ScrollFilter.LimitHeight"));
	FUNC6(p, limit_cy_clicked);
	FUNC4(props, "cy", FUNC1("Crop.Height"), 1,
			       8192, 1);

	FUNC2(props, "loop",
				FUNC1("ScrollFilter.Loop"));

	FUNC0(data);
	return props;
}