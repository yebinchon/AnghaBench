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
struct limiter_data {float threshold; size_t num_channels; size_t sample_rate; float slope; scalar_t__ envelope_buf_len; int /*<<< orphan*/  output_gain; void* release_gain; void* attack_gain; } ;
typedef  int /*<<< orphan*/  obs_data_t ;

/* Variables and functions */
 float ATK_TIME ; 
 size_t const DEFAULT_AUDIO_BUF_MS ; 
 size_t const MS_IN_S ; 
 float MS_IN_S_F ; 
 int /*<<< orphan*/  S_RELEASE_TIME ; 
 int /*<<< orphan*/  S_THRESHOLD ; 
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (float const) ; 
 void* FUNC3 (size_t const,float const) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct limiter_data*,size_t) ; 

__attribute__((used)) static void FUNC8(void *data, obs_data_t *s)
{
	struct limiter_data *cd = data;

	const uint32_t sample_rate =
		FUNC1(FUNC6());
	const size_t num_channels = FUNC0(FUNC6());
	float attack_time_ms = ATK_TIME;

	const float release_time_ms =
		(float)FUNC5(s, S_RELEASE_TIME);
	const float output_gain_db = 0;

	cd->threshold = (float)FUNC4(s, S_THRESHOLD);

	cd->attack_gain =
		FUNC3(sample_rate, attack_time_ms / MS_IN_S_F);
	cd->release_gain =
		FUNC3(sample_rate, release_time_ms / MS_IN_S_F);
	cd->output_gain = FUNC2(output_gain_db);
	cd->num_channels = num_channels;
	cd->sample_rate = sample_rate;
	cd->slope = 1.0f;

	size_t sample_len = sample_rate * DEFAULT_AUDIO_BUF_MS / MS_IN_S;
	if (cd->envelope_buf_len == 0)
		FUNC7(cd, sample_len);
}