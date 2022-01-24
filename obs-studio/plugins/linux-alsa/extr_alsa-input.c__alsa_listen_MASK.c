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
struct obs_source_audio {int samples_per_sec; int frames; scalar_t__ timestamp; int /*<<< orphan*/  speakers; int /*<<< orphan*/  format; int /*<<< orphan*/ * data; } ;
struct alsa_data {int rate; scalar_t__ first_ts; int /*<<< orphan*/  source; int /*<<< orphan*/  handle; int /*<<< orphan*/  listen; int /*<<< orphan*/  period_size; int /*<<< orphan*/  buffer; int /*<<< orphan*/  channels; int /*<<< orphan*/  format; } ;
typedef  int snd_pcm_sframes_t ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_DEBUG ; 
 int NSEC_PER_SEC ; 
 scalar_t__ STARTUP_TIMEOUT_NS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct obs_source_audio*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int) ; 

void *FUNC11(void *attr)
{
	struct alsa_data *data = attr;
	struct obs_source_audio out;

	FUNC2(LOG_DEBUG, "Capture thread started.");

	out.data[0] = data->buffer;
	out.format = FUNC1(data->format);
	out.speakers = FUNC0(data->channels);
	out.samples_per_sec = data->rate;

	FUNC5(&data->listen, true);

	do {
		snd_pcm_sframes_t frames = FUNC8(
			data->handle, data->buffer, data->period_size);

		if (!FUNC4(&data->listen))
			break;

		if (frames <= 0) {
			frames = FUNC9(data->handle, frames, 0);
			if (frames <= 0) {
				FUNC10(data->handle, 100);
				continue;
			}
		}

		out.frames = frames;
		out.timestamp = FUNC6() -
				((frames * NSEC_PER_SEC) / data->rate);

		if (!data->first_ts)
			data->first_ts = out.timestamp + STARTUP_TIMEOUT_NS;

		if (out.timestamp > data->first_ts)
			FUNC3(data->source, &out);
	} while (FUNC4(&data->listen));

	FUNC2(LOG_DEBUG, "Capture thread is about to exit.");

	FUNC7(NULL);
	return NULL;
}