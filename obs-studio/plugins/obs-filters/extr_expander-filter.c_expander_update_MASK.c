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
typedef  size_t uint32_t ;
struct expander_data {int is_gate; float ratio; float threshold; size_t num_channels; size_t sample_rate; float slope; scalar_t__ envelope_buf_len; scalar_t__ runaverage_len; scalar_t__ env_in_len; scalar_t__ gaindB_len; int /*<<< orphan*/  detector; int /*<<< orphan*/  output_gain; void* release_gain; void* attack_gain; } ;
typedef  int /*<<< orphan*/  obs_data_t ;

/* Variables and functions */
 size_t const DEFAULT_AUDIO_BUF_MS ; 
 size_t const MS_IN_S ; 
 float const MS_IN_S_F ; 
 int /*<<< orphan*/  PEAK_DETECT ; 
 int /*<<< orphan*/  RMS_DETECT ; 
 int /*<<< orphan*/  S_ATTACK_TIME ; 
 int /*<<< orphan*/  S_DETECTOR ; 
 int /*<<< orphan*/  S_OUTPUT_GAIN ; 
 int /*<<< orphan*/  S_PRESETS ; 
 int /*<<< orphan*/  S_RATIO ; 
 int /*<<< orphan*/  S_RELEASE_TIME ; 
 int /*<<< orphan*/  S_THRESHOLD ; 
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (float const) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 void* FUNC4 (size_t const,float const) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (struct expander_data*,size_t) ; 
 int /*<<< orphan*/  FUNC12 (struct expander_data*,size_t) ; 
 int /*<<< orphan*/  FUNC13 (struct expander_data*,size_t) ; 
 int /*<<< orphan*/  FUNC14 (struct expander_data*,size_t) ; 
 scalar_t__ FUNC15 (char const*,char*) ; 

__attribute__((used)) static void FUNC16(void *data, obs_data_t *s)
{
	struct expander_data *cd = data;
	const char *presets = FUNC8(s, S_PRESETS);
	if (FUNC15(presets, "expander") == 0 && cd->is_gate) {
		FUNC5(s);
		FUNC9(s, S_PRESETS, "expander");
		FUNC3(s);
		cd->is_gate = false;
	}
	if (FUNC15(presets, "gate") == 0 && !cd->is_gate) {
		FUNC5(s);
		FUNC9(s, S_PRESETS, "gate");
		FUNC3(s);
		cd->is_gate = true;
	}

	const uint32_t sample_rate =
		FUNC1(FUNC10());
	const size_t num_channels = FUNC0(FUNC10());
	const float attack_time_ms = (float)FUNC7(s, S_ATTACK_TIME);
	const float release_time_ms =
		(float)FUNC7(s, S_RELEASE_TIME);
	const float output_gain_db =
		(float)FUNC6(s, S_OUTPUT_GAIN);

	cd->ratio = (float)FUNC6(s, S_RATIO);

	cd->threshold = (float)FUNC6(s, S_THRESHOLD);
	cd->attack_gain =
		FUNC4(sample_rate, attack_time_ms / MS_IN_S_F);
	cd->release_gain =
		FUNC4(sample_rate, release_time_ms / MS_IN_S_F);
	cd->output_gain = FUNC2(output_gain_db);
	cd->num_channels = num_channels;
	cd->sample_rate = sample_rate;
	cd->slope = 1.0f - cd->ratio;

	const char *detect_mode = FUNC8(s, S_DETECTOR);
	if (FUNC15(detect_mode, "RMS") == 0)
		cd->detector = RMS_DETECT;
	if (FUNC15(detect_mode, "peak") == 0)
		cd->detector = PEAK_DETECT;

	size_t sample_len = sample_rate * DEFAULT_AUDIO_BUF_MS / MS_IN_S;
	if (cd->envelope_buf_len == 0)
		FUNC11(cd, sample_len);
	if (cd->runaverage_len == 0)
		FUNC14(cd, sample_len);
	if (cd->env_in_len == 0)
		FUNC12(cd, sample_len);
	if (cd->gaindB_len == 0)
		FUNC13(cd, sample_len);
}