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
struct compressor_data {float ratio; float threshold; size_t num_channels; size_t sample_rate; float slope; char const* sidechain_name; scalar_t__ envelope_buf_len; int /*<<< orphan*/  sidechain_update_mutex; scalar_t__ sidechain_check_time; int /*<<< orphan*/ * weak_sidechain; int /*<<< orphan*/  output_gain; void* release_gain; void* attack_gain; } ;
typedef  int /*<<< orphan*/  obs_weak_source_t ;
typedef  int /*<<< orphan*/  obs_source_t ;
typedef  int /*<<< orphan*/  obs_data_t ;

/* Variables and functions */
 size_t const DEFAULT_AUDIO_BUF_MS ; 
 size_t const MS_IN_S ; 
 float const MS_IN_S_F ; 
 int /*<<< orphan*/  S_ATTACK_TIME ; 
 int /*<<< orphan*/  S_OUTPUT_GAIN ; 
 int /*<<< orphan*/  S_RATIO ; 
 int /*<<< orphan*/  S_RELEASE_TIME ; 
 int /*<<< orphan*/  S_SIDECHAIN_SOURCE ; 
 int /*<<< orphan*/  S_THRESHOLD ; 
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 
 char const* FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (float const) ; 
 void* FUNC5 (size_t const,float const) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct compressor_data*) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (struct compressor_data*,size_t) ; 
 int /*<<< orphan*/  sidechain_capture ; 
 scalar_t__ FUNC18 (char const*,char const*) ; 

__attribute__((used)) static void FUNC19(void *data, obs_data_t *s)
{
	struct compressor_data *cd = data;

	const uint32_t sample_rate =
		FUNC1(FUNC9());
	const size_t num_channels = FUNC0(FUNC9());
	const float attack_time_ms = (float)FUNC7(s, S_ATTACK_TIME);
	const float release_time_ms =
		(float)FUNC7(s, S_RELEASE_TIME);
	const float output_gain_db =
		(float)FUNC6(s, S_OUTPUT_GAIN);
	const char *sidechain_name = FUNC8(s, S_SIDECHAIN_SOURCE);

	cd->ratio = (float)FUNC6(s, S_RATIO);
	cd->threshold = (float)FUNC6(s, S_THRESHOLD);
	cd->attack_gain =
		FUNC5(sample_rate, attack_time_ms / MS_IN_S_F);
	cd->release_gain =
		FUNC5(sample_rate, release_time_ms / MS_IN_S_F);
	cd->output_gain = FUNC4(output_gain_db);
	cd->num_channels = num_channels;
	cd->sample_rate = sample_rate;
	cd->slope = 1.0f - (1.0f / cd->ratio);

	bool valid_sidechain = *sidechain_name &&
			       FUNC18(sidechain_name, "none") != 0;
	obs_weak_source_t *old_weak_sidechain = NULL;

	FUNC15(&cd->sidechain_update_mutex);

	if (!valid_sidechain) {
		if (cd->weak_sidechain) {
			old_weak_sidechain = cd->weak_sidechain;
			cd->weak_sidechain = NULL;
		}

		FUNC2(cd->sidechain_name);
		cd->sidechain_name = NULL;

	} else {
		if (!cd->sidechain_name ||
		    FUNC18(cd->sidechain_name, sidechain_name) != 0) {
			if (cd->weak_sidechain) {
				old_weak_sidechain = cd->weak_sidechain;
				cd->weak_sidechain = NULL;
			}

			FUNC2(cd->sidechain_name);
			cd->sidechain_name = FUNC3(sidechain_name);
			cd->sidechain_check_time = FUNC14() - 3000000000;
		}
	}

	FUNC16(&cd->sidechain_update_mutex);

	if (old_weak_sidechain) {
		obs_source_t *old_sidechain =
			FUNC12(old_weak_sidechain);

		if (old_sidechain) {
			FUNC11(
				old_sidechain, sidechain_capture, cd);
			FUNC10(old_sidechain);
		}

		FUNC13(old_weak_sidechain);
	}

	size_t sample_len = sample_rate * DEFAULT_AUDIO_BUF_MS / MS_IN_S;
	if (cd->envelope_buf_len == 0)
		FUNC17(cd, sample_len);
}