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
 int /*<<< orphan*/  OBS_TEXT_DEFAULT ; 
 int /*<<< orphan*/  TEXT_BITRATE ; 
 int /*<<< orphan*/  TEXT_BUF_SIZE ; 
 int /*<<< orphan*/  TEXT_CRF ; 
 int /*<<< orphan*/  TEXT_CUSTOM_BUF ; 
 int /*<<< orphan*/  TEXT_KEYINT_SEC ; 
 char* TEXT_NONE ; 
 int /*<<< orphan*/  TEXT_PRESET ; 
 int /*<<< orphan*/  TEXT_PROFILE ; 
 int /*<<< orphan*/  TEXT_RATE_CONTROL ; 
 int /*<<< orphan*/  TEXT_TUNE ; 
 int /*<<< orphan*/  TEXT_VFR ; 
 int /*<<< orphan*/  TEXT_X264_OPTS ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rate_control_modified ; 
 int /*<<< orphan*/  use_bufsize_modified ; 
 int /*<<< orphan*/  x264_preset_names ; 
 int /*<<< orphan*/  x264_tune_names ; 

__attribute__((used)) static obs_properties_t *FUNC10(void *unused)
{
	FUNC0(unused);

	obs_properties_t *props = FUNC6();
	obs_property_t *list;
	obs_property_t *p;

	list = FUNC4(props, "rate_control", TEXT_RATE_CONTROL,
				       OBS_COMBO_TYPE_LIST,
				       OBS_COMBO_FORMAT_STRING);
	FUNC8(list, "CBR", "CBR");
	FUNC8(list, "ABR", "ABR");
	FUNC8(list, "VBR", "VBR");
	FUNC8(list, "CRF", "CRF");

	FUNC9(list, rate_control_modified);

	p = FUNC3(props, "bitrate", TEXT_BITRATE, 50, 10000000,
				   50);
	FUNC7(p, " Kbps");

	p = FUNC2(props, "use_bufsize", TEXT_CUSTOM_BUF);
	FUNC9(p, use_bufsize_modified);
	FUNC3(props, "buffer_size", TEXT_BUF_SIZE, 0, 10000000,
			       1);

	FUNC3(props, "crf", TEXT_CRF, 0, 51, 1);

	FUNC3(props, "keyint_sec", TEXT_KEYINT_SEC, 0, 20, 1);

	list = FUNC4(props, "preset", TEXT_PRESET,
				       OBS_COMBO_TYPE_LIST,
				       OBS_COMBO_FORMAT_STRING);
	FUNC1(list, x264_preset_names);

	list = FUNC4(props, "profile", TEXT_PROFILE,
				       OBS_COMBO_TYPE_LIST,
				       OBS_COMBO_FORMAT_STRING);
	FUNC8(list, TEXT_NONE, "");
	FUNC8(list, "baseline", "baseline");
	FUNC8(list, "main", "main");
	FUNC8(list, "high", "high");

	list = FUNC4(props, "tune", TEXT_TUNE,
				       OBS_COMBO_TYPE_LIST,
				       OBS_COMBO_FORMAT_STRING);
	FUNC8(list, TEXT_NONE, "");
	FUNC1(list, x264_tune_names);

#ifdef ENABLE_VFR
	obs_properties_add_bool(props, "vfr", TEXT_VFR);
#endif

	FUNC5(props, "x264opts", TEXT_X264_OPTS,
				OBS_TEXT_DEFAULT);

	return props;
}