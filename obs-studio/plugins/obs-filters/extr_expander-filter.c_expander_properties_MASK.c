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
 int /*<<< orphan*/  MAX_ATK_MS ; 
 int /*<<< orphan*/  MAX_OUTPUT_GAIN_DB ; 
 int /*<<< orphan*/  MAX_RATIO ; 
 int /*<<< orphan*/  MAX_RLS_MS ; 
 int /*<<< orphan*/  MAX_THRESHOLD_DB ; 
 int /*<<< orphan*/  MIN_ATK_RLS_MS ; 
 int /*<<< orphan*/  MIN_OUTPUT_GAIN_DB ; 
 int /*<<< orphan*/  MIN_RATIO ; 
 int /*<<< orphan*/  MIN_THRESHOLD_DB ; 
 int /*<<< orphan*/  OBS_COMBO_FORMAT_STRING ; 
 int /*<<< orphan*/  OBS_COMBO_TYPE_LIST ; 
 int /*<<< orphan*/  S_ATTACK_TIME ; 
 int /*<<< orphan*/  S_DETECTOR ; 
 int /*<<< orphan*/  S_OUTPUT_GAIN ; 
 int /*<<< orphan*/  S_PRESETS ; 
 int /*<<< orphan*/  S_RATIO ; 
 int /*<<< orphan*/  S_RELEASE_TIME ; 
 int /*<<< orphan*/  S_THRESHOLD ; 
 int /*<<< orphan*/  TEXT_ATTACK_TIME ; 
 int /*<<< orphan*/  TEXT_DETECTOR ; 
 int /*<<< orphan*/  TEXT_OUTPUT_GAIN ; 
 int /*<<< orphan*/  TEXT_PEAK ; 
 int /*<<< orphan*/  TEXT_PRESETS ; 
 int /*<<< orphan*/  TEXT_PRESETS_EXP ; 
 int /*<<< orphan*/  TEXT_PRESETS_GATE ; 
 int /*<<< orphan*/  TEXT_RATIO ; 
 int /*<<< orphan*/  TEXT_RELEASE_TIME ; 
 int /*<<< orphan*/  TEXT_RMS ; 
 int /*<<< orphan*/  TEXT_THRESHOLD ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,double) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  presets_changed ; 

__attribute__((used)) static obs_properties_t *FUNC9(void *data)
{
	obs_properties_t *props = FUNC4();
	obs_property_t *p;

	obs_property_t *presets = FUNC3(
		props, S_PRESETS, TEXT_PRESETS, OBS_COMBO_TYPE_LIST,
		OBS_COMBO_FORMAT_STRING);
	FUNC7(presets, TEXT_PRESETS_EXP, "expander");
	FUNC7(presets, TEXT_PRESETS_GATE, "gate");
	FUNC8(presets, presets_changed);
	p = FUNC1(props, S_RATIO, TEXT_RATIO,
					    MIN_RATIO, MAX_RATIO, 0.1);
	FUNC5(p, ":1");
	p = FUNC1(props, S_THRESHOLD, TEXT_THRESHOLD,
					    MIN_THRESHOLD_DB, MAX_THRESHOLD_DB,
					    0.1);
	FUNC5(p, " dB");
	p = FUNC2(props, S_ATTACK_TIME,
					  TEXT_ATTACK_TIME, MIN_ATK_RLS_MS,
					  MAX_ATK_MS, 1);
	FUNC6(p, " ms");
	p = FUNC2(props, S_RELEASE_TIME,
					  TEXT_RELEASE_TIME, MIN_ATK_RLS_MS,
					  MAX_RLS_MS, 1);
	FUNC6(p, " ms");
	p = FUNC1(props, S_OUTPUT_GAIN,
					    TEXT_OUTPUT_GAIN,
					    MIN_OUTPUT_GAIN_DB,
					    MAX_OUTPUT_GAIN_DB, 0.1);
	FUNC5(p, " dB");
	obs_property_t *detect = FUNC3(
		props, S_DETECTOR, TEXT_DETECTOR, OBS_COMBO_TYPE_LIST,
		OBS_COMBO_FORMAT_STRING);
	FUNC7(detect, TEXT_RMS, "RMS");
	FUNC7(detect, TEXT_PEAK, "peak");

	FUNC0(data);
	return props;
}