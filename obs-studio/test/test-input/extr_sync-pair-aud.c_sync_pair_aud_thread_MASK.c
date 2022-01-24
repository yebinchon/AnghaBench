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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint64_t ;
typedef  int uint32_t ;
struct video_output_info {int fps_num; int fps_den; } ;
struct sync_pair_aud {int /*<<< orphan*/  source; int /*<<< orphan*/  event; } ;
struct obs_source_audio {int frames; int samples_per_sec; int timestamp; int /*<<< orphan*/  format; int /*<<< orphan*/  speakers; int /*<<< orphan*/ ** data; } ;

/* Variables and functions */
 int /*<<< orphan*/  AUDIO_FORMAT_FLOAT ; 
 scalar_t__ EAGAIN ; 
 double M_PI_X2 ; 
 int /*<<< orphan*/  SPEAKERS_MONO ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 double FUNC1 (double) ; 
 int /*<<< orphan*/  FUNC2 (float*) ; 
 float* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct obs_source_audio*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 double rate ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 struct video_output_info* FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int,int,int,int) ; 

__attribute__((used)) static void *FUNC13(void *pdata)
{
	struct sync_pair_aud *spa = pdata;
	uint32_t sample_rate = FUNC0(FUNC4());
	uint32_t frames = sample_rate / 100;
	uint64_t last_time = FUNC6();
	double cos_val = 0.0;
	float *samples = FUNC3(frames * sizeof(float));

	uint64_t interval = FUNC10(FUNC5());
	const struct video_output_info *voi =
		FUNC11(FUNC5());
	uint64_t fps_num = voi->fps_num;
	uint64_t fps_den = voi->fps_den;

	while (FUNC8(spa->event) == EAGAIN) {
		if (!FUNC9(last_time += 10000000))
			last_time = FUNC6();

		for (uint64_t i = 0; i < frames; i++) {
			uint64_t ts =
				last_time + i * 1000000000ULL / sample_rate;

			if (FUNC12(ts, interval, fps_num, fps_den)) {
				cos_val += rate * M_PI_X2;
				if (cos_val > M_PI_X2)
					cos_val -= M_PI_X2;

				samples[i] = (float)(FUNC1(cos_val) * 0.5);
			} else {
				samples[i] = 0.0f;
			}
		}

		struct obs_source_audio data;
		data.data[0] = (uint8_t *)samples;
		data.frames = frames;
		data.speakers = SPEAKERS_MONO;
		data.samples_per_sec = sample_rate;
		data.timestamp = last_time;
		data.format = AUDIO_FORMAT_FLOAT;
		FUNC7(spa->source, &data);
	}

	FUNC2(samples);

	return NULL;
}