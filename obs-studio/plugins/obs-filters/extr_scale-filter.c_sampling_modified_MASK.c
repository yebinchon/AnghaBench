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
 int /*<<< orphan*/  S_SAMPLING ; 
 int /*<<< orphan*/  S_SAMPLING_AREA ; 
 int /*<<< orphan*/  S_SAMPLING_BILINEAR ; 
 int /*<<< orphan*/  S_SAMPLING_LANCZOS ; 
 int /*<<< orphan*/  S_SAMPLING_POINT ; 
 int /*<<< orphan*/  S_UNDISTORT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (char const*,int /*<<< orphan*/ ) ; 
 char* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static bool FUNC5(obs_properties_t *props, obs_property_t *p,
			      obs_data_t *settings)
{
	const char *sampling = FUNC2(settings, S_SAMPLING);

	bool has_undistort;
	if (FUNC1(sampling, S_SAMPLING_POINT) == 0) {
		has_undistort = false;
	} else if (FUNC1(sampling, S_SAMPLING_BILINEAR) == 0) {
		has_undistort = false;
	} else if (FUNC1(sampling, S_SAMPLING_LANCZOS) == 0) {
		has_undistort = true;
	} else if (FUNC1(sampling, S_SAMPLING_AREA) == 0) {
		has_undistort = false;
	} else { /* S_SAMPLING_BICUBIC */
		has_undistort = true;
	}

	FUNC4(FUNC3(props, S_UNDISTORT),
				 has_undistort);

	FUNC0(p);
	return true;
}