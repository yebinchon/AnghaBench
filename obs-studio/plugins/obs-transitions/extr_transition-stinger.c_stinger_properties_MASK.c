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
 int /*<<< orphan*/  FADE_STYLE_CROSS_FADE ; 
 int /*<<< orphan*/  FADE_STYLE_FADE_OUT_FADE_IN ; 
 int /*<<< orphan*/  FILE_FILTER ; 
 int /*<<< orphan*/  OBS_COMBO_FORMAT_INT ; 
 int /*<<< orphan*/  OBS_COMBO_TYPE_LIST ; 
 int /*<<< orphan*/  OBS_MONITORING_TYPE_MONITOR_AND_OUTPUT ; 
 int /*<<< orphan*/  OBS_MONITORING_TYPE_MONITOR_ONLY ; 
 int /*<<< orphan*/  OBS_MONITORING_TYPE_NONE ; 
 int /*<<< orphan*/  OBS_PATH_FILE ; 
 int /*<<< orphan*/  OBS_PROPERTIES_DEFER_UPDATE ; 
 int /*<<< orphan*/  TIMING_FRAME ; 
 int /*<<< orphan*/  TIMING_TIME ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  transition_point_type_modified ; 

__attribute__((used)) static obs_properties_t *FUNC9(void *data)
{
	obs_properties_t *ppts = FUNC5();

	FUNC6(ppts, OBS_PROPERTIES_DEFER_UPDATE);

	FUNC4(ppts, "path", FUNC1("VideoFile"),
				OBS_PATH_FILE, FILE_FILTER, NULL);
	obs_property_t *p = FUNC3(
		ppts, "tp_type", FUNC1("TransitionPointType"),
		OBS_COMBO_TYPE_LIST, OBS_COMBO_FORMAT_INT);
	FUNC7(p, FUNC1("TransitionPointTypeTime"),
				  TIMING_TIME);
	FUNC7(
		p, FUNC1("TransitionPointTypeFrame"), TIMING_FRAME);

	FUNC8(p, transition_point_type_modified);

	FUNC2(ppts, "transition_point",
			       FUNC1("TransitionPoint"), 0, 120000,
			       1);

	obs_property_t *monitor_list = FUNC3(
		ppts, "audio_monitoring", FUNC1("AudioMonitoring"),
		OBS_COMBO_TYPE_LIST, OBS_COMBO_FORMAT_INT);
	FUNC7(monitor_list,
				  FUNC1("AudioMonitoring.None"),
				  OBS_MONITORING_TYPE_NONE);
	FUNC7(
		monitor_list, FUNC1("AudioMonitoring.MonitorOnly"),
		OBS_MONITORING_TYPE_MONITOR_ONLY);
	FUNC7(monitor_list,
				  FUNC1("AudioMonitoring.Both"),
				  OBS_MONITORING_TYPE_MONITOR_AND_OUTPUT);

	obs_property_t *audio_fade_style = FUNC3(
		ppts, "audio_fade_style", FUNC1("AudioFadeStyle"),
		OBS_COMBO_TYPE_LIST, OBS_COMBO_FORMAT_INT);
	FUNC7(
		audio_fade_style,
		FUNC1("AudioFadeStyle.FadeOutFadeIn"),
		FADE_STYLE_FADE_OUT_FADE_IN);
	FUNC7(audio_fade_style,
				  FUNC1("AudioFadeStyle.CrossFade"),
				  FADE_STYLE_CROSS_FADE);

	FUNC0(data);
	return ppts;
}