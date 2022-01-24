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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (char*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,char*,char*,int,int,int) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rate_control_modified ; 

obs_properties_t *FUNC11(bool ffmpeg)
{
	obs_properties_t *props = FUNC6();
	obs_property_t *p;

	p = FUNC5(props, "rate_control",
				    FUNC2("RateControl"),
				    OBS_COMBO_TYPE_LIST,
				    OBS_COMBO_FORMAT_STRING);
	FUNC8(p, "CBR", "CBR");
	FUNC8(p, "CQP", "CQP");
	FUNC8(p, "VBR", "VBR");
	FUNC8(p, FUNC2("Lossless"),
				     "lossless");

	FUNC10(p, rate_control_modified);

	p = FUNC4(props, "bitrate", FUNC2("Bitrate"),
				   50, 300000, 50);
	FUNC7(p, " Kbps");
	p = FUNC4(props, "max_bitrate",
				   FUNC2("MaxBitrate"), 50, 300000,
				   50);
	FUNC7(p, " Kbps");

	FUNC4(props, "cqp", FUNC2("NVENC.CQLevel"),
			       1, 30, 1);

	FUNC4(props, "keyint_sec",
			       FUNC2("KeyframeIntervalSec"), 0, 10,
			       1);

	p = FUNC5(props, "preset", FUNC2("Preset"),
				    OBS_COMBO_TYPE_LIST,
				    OBS_COMBO_FORMAT_STRING);

#define add_preset(val)                                                       \
	obs_property_list_add_string(p, obs_module_text("NVENC.Preset." val), \
				     val)
	add_preset("mq");
	add_preset("hq");
	add_preset("default");
	add_preset("hp");
	add_preset("ll");
	add_preset("llhq");
	add_preset("llhp");
#undef add_preset

	p = FUNC5(props, "profile",
				    FUNC2("Profile"),
				    OBS_COMBO_TYPE_LIST,
				    OBS_COMBO_FORMAT_STRING);

#define add_profile(val) obs_property_list_add_string(p, val, val)
	add_profile("high");
	add_profile("main");
	add_profile("baseline");
#undef add_profile

	if (!ffmpeg) {
		p = FUNC3(props, "lookahead",
					    FUNC2("NVENC.LookAhead"));
		FUNC9(
			p, FUNC2("NVENC.LookAhead.ToolTip"));

		p = FUNC3(
			props, "psycho_aq",
			FUNC2("NVENC.PsychoVisualTuning"));
		FUNC9(
			p, FUNC2("NVENC.PsychoVisualTuning.ToolTip"));
	}

	FUNC4(props, "gpu", FUNC2("GPU"), 0, 8, 1);

	FUNC4(props, "bf", FUNC2("BFrames"), 0, 4,
			       1);

	return props;
}