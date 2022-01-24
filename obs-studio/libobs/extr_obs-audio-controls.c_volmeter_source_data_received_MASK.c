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
struct obs_volmeter {float* magnitude; float* peak; int /*<<< orphan*/  mutex; int /*<<< orphan*/  cur_db; } ;
struct audio_data {int dummy; } ;
typedef  int /*<<< orphan*/  obs_source_t ;

/* Variables and functions */
 int MAX_AUDIO_CHANNELS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 float FUNC1 (int /*<<< orphan*/ ) ; 
 float FUNC2 (float) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct obs_volmeter*,float*,float*,float*) ; 
 int /*<<< orphan*/  FUNC6 (struct obs_volmeter*,struct audio_data const*) ; 

__attribute__((used)) static void FUNC7(void *vptr, obs_source_t *source,
					  const struct audio_data *data,
					  bool muted)
{
	struct obs_volmeter *volmeter = (struct obs_volmeter *)vptr;
	float mul;
	float magnitude[MAX_AUDIO_CHANNELS];
	float peak[MAX_AUDIO_CHANNELS];
	float input_peak[MAX_AUDIO_CHANNELS];

	FUNC3(&volmeter->mutex);

	FUNC6(volmeter, data);

	// Adjust magnitude/peak based on the volume level set by the user.
	// And convert to dB.
	mul = muted ? 0.0f : FUNC1(volmeter->cur_db);
	for (int channel_nr = 0; channel_nr < MAX_AUDIO_CHANNELS;
	     channel_nr++) {
		magnitude[channel_nr] =
			FUNC2(volmeter->magnitude[channel_nr] * mul);
		peak[channel_nr] = FUNC2(volmeter->peak[channel_nr] * mul);

		/* The input-peak is NOT adjusted with volume, so that the user
		 * can check the input-gain. */
		input_peak[channel_nr] = FUNC2(volmeter->peak[channel_nr]);
	}

	FUNC4(&volmeter->mutex);

	FUNC5(volmeter, magnitude, peak, input_peak);

	FUNC0(source);
}