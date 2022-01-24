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
 char* FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static bool FUNC6(obs_properties_t *props, obs_property_t *p,
			     obs_data_t *settings)
{
	bool relative = FUNC1(settings, "relative");

	FUNC4(FUNC3(props, "left"),
				     relative ? FUNC2("Crop.Left")
					      : "X");
	FUNC4(FUNC3(props, "top"),
				     relative ? FUNC2("Crop.Top")
					      : "Y");

	FUNC5(FUNC3(props, "right"), relative);
	FUNC5(FUNC3(props, "bottom"), relative);
	FUNC5(FUNC3(props, "cx"), !relative);
	FUNC5(FUNC3(props, "cy"), !relative);

	FUNC0(p);
	return true;
}