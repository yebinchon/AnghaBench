#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
typedef  int uint32_t ;
struct obs_source_audio_mix {TYPE_1__* output; } ;
typedef  int /*<<< orphan*/  obs_source_t ;
struct TYPE_2__ {float** data; } ;

/* Variables and functions */
 int AUDIO_OUTPUT_FRAMES ; 
 int MAX_AUDIO_CHANNELS ; 
 size_t MAX_AUDIO_MIXES ; 
 int /*<<< orphan*/  FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (float*,float*,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct obs_source_audio_mix*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline bool FUNC5(obs_source_t *transition, uint64_t *ts_out,
				    struct obs_source_audio_mix *audio_output,
				    uint32_t mixers, size_t channels,
				    size_t sample_rate)
{
	struct obs_source_audio_mix child_audio;
	uint64_t source_ts;

	if (FUNC2(transition))
		return false;

	source_ts = FUNC4(transition);
	if (!source_ts)
		return false;

	FUNC3(transition, &child_audio);
	for (size_t mix = 0; mix < MAX_AUDIO_MIXES; mix++) {
		if ((mixers & (1 << mix)) == 0)
			continue;

		for (size_t ch = 0; ch < channels; ch++) {
			float *out = audio_output->output[mix].data[ch];
			float *in = child_audio.output[mix].data[ch];

			FUNC1(out, in,
			       AUDIO_OUTPUT_FRAMES * MAX_AUDIO_CHANNELS *
				       sizeof(float));
		}
	}

	*ts_out = source_ts;

	FUNC0(sample_rate);
	return true;
}