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
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_2__ {size_t samples_per_sec; int /*<<< orphan*/  name; } ;
struct audio_output {int /*<<< orphan*/  stop_event; TYPE_1__ info; } ;

/* Variables and functions */
 scalar_t__ AUDIO_OUTPUT_FRAMES ; 
 scalar_t__ EAGAIN ; 
 scalar_t__ FUNC0 (size_t,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct audio_output*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char const*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (char const*) ; 
 char* FUNC10 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void *FUNC11(void *param)
{
	struct audio_output *audio = param;
	size_t rate = audio->info.samples_per_sec;
	uint64_t samples = 0;
	uint64_t start_time = FUNC4();
	uint64_t prev_time = start_time;
	uint64_t audio_time = prev_time;
	uint32_t audio_wait_time = (uint32_t)(
		FUNC0(rate, AUDIO_OUTPUT_FRAMES) / 1000000);

	FUNC5("audio-io: audio thread");

	const char *audio_thread_name =
		FUNC10(FUNC2(),
				   "audio_thread(%s)", audio->info.name);

	while (FUNC3(audio->stop_event) == EAGAIN) {
		uint64_t cur_time;

		FUNC6(audio_wait_time);

		FUNC9(audio_thread_name);

		cur_time = FUNC4();
		while (audio_time <= cur_time) {
			samples += AUDIO_OUTPUT_FRAMES;
			audio_time =
				start_time + FUNC0(rate, samples);

			FUNC1(audio, audio_time, prev_time);
			prev_time = audio_time;
		}

		FUNC7(audio_thread_name);

		FUNC8();
	}

	return NULL;
}