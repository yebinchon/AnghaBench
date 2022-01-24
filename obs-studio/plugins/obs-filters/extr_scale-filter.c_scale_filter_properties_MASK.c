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
typedef  int /*<<< orphan*/  uint32_t ;
struct obs_video_info {int base_width; int base_height; } ;
typedef  int /*<<< orphan*/  obs_property_t ;
typedef  int /*<<< orphan*/  obs_properties_t ;

/* Variables and functions */
 size_t NUM_ASPECTS ; 
 int NUM_DOWNSCALES ; 
 int /*<<< orphan*/  OBS_COMBO_FORMAT_STRING ; 
 int /*<<< orphan*/  OBS_COMBO_TYPE_EDITABLE ; 
 int /*<<< orphan*/  OBS_COMBO_TYPE_LIST ; 
 int /*<<< orphan*/  S_RESOLUTION ; 
 int /*<<< orphan*/  S_SAMPLING ; 
 char* S_SAMPLING_AREA ; 
 char* S_SAMPLING_BICUBIC ; 
 char* S_SAMPLING_BILINEAR ; 
 char* S_SAMPLING_LANCZOS ; 
 char* S_SAMPLING_POINT ; 
 int /*<<< orphan*/  S_UNDISTORT ; 
 char* T_BASE ; 
 char* T_NONE ; 
 int /*<<< orphan*/  T_RESOLUTION ; 
 int /*<<< orphan*/  T_SAMPLING ; 
 char* T_SAMPLING_AREA ; 
 char* T_SAMPLING_BICUBIC ; 
 char* T_SAMPLING_BILINEAR ; 
 char* T_SAMPLING_LANCZOS ; 
 char* T_SAMPLING_POINT ; 
 int /*<<< orphan*/  T_UNDISTORT ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 char** aspects ; 
 double* downscale_vals ; 
 int /*<<< orphan*/  FUNC1 (struct obs_video_info*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sampling_modified ; 
 int /*<<< orphan*/  FUNC7 (char*,int,char*,int,int) ; 

__attribute__((used)) static obs_properties_t *FUNC8(void *data)
{
	obs_properties_t *props = FUNC4();
	struct obs_video_info ovi;
	obs_property_t *p;
	uint32_t cx;
	uint32_t cy;

	struct {
		int cx;
		int cy;
	} downscales[NUM_DOWNSCALES];

	/* ----------------- */

	FUNC1(&ovi);
	cx = ovi.base_width;
	cy = ovi.base_height;

	for (size_t i = 0; i < NUM_DOWNSCALES; i++) {
		downscales[i].cx = (int)((double)cx / downscale_vals[i]);
		downscales[i].cy = (int)((double)cy / downscale_vals[i]);
	}

	p = FUNC3(props, S_SAMPLING, T_SAMPLING,
				    OBS_COMBO_TYPE_LIST,
				    OBS_COMBO_FORMAT_STRING);
	FUNC6(p, sampling_modified);
	FUNC5(p, T_SAMPLING_POINT, S_SAMPLING_POINT);
	FUNC5(p, T_SAMPLING_BILINEAR,
				     S_SAMPLING_BILINEAR);
	FUNC5(p, T_SAMPLING_BICUBIC, S_SAMPLING_BICUBIC);
	FUNC5(p, T_SAMPLING_LANCZOS, S_SAMPLING_LANCZOS);
	FUNC5(p, T_SAMPLING_AREA, S_SAMPLING_AREA);

	/* ----------------- */

	p = FUNC3(props, S_RESOLUTION, T_RESOLUTION,
				    OBS_COMBO_TYPE_EDITABLE,
				    OBS_COMBO_FORMAT_STRING);

	FUNC5(p, T_NONE, T_NONE);
	FUNC5(p, T_BASE, T_BASE);

	for (size_t i = 0; i < NUM_ASPECTS; i++)
		FUNC5(p, aspects[i], aspects[i]);

	for (size_t i = 0; i < NUM_DOWNSCALES; i++) {
		char str[32];
		FUNC7(str, 32, "%dx%d", downscales[i].cx, downscales[i].cy);
		FUNC5(p, str, str);
	}

	FUNC2(props, S_UNDISTORT, T_UNDISTORT);

	/* ----------------- */

	FUNC0(data);
	return props;
}