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
struct obs_source_audio {scalar_t__ timestamp; int /*<<< orphan*/  frames; int /*<<< orphan*/ ** data; int /*<<< orphan*/  format; int /*<<< orphan*/  samples_per_sec; int /*<<< orphan*/  speakers; } ;
struct jack_data {unsigned int channels; int /*<<< orphan*/  jack_mutex; int /*<<< orphan*/  source; int /*<<< orphan*/  jack_client; int /*<<< orphan*/ * jack_ports; } ;
typedef  int /*<<< orphan*/  jack_nframes_t ;
typedef  int /*<<< orphan*/  jack_default_audio_sample_t ;

/* Variables and functions */
 int /*<<< orphan*/  AUDIO_FORMAT_FLOAT_PLANAR ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct obs_source_audio*) ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

int FUNC8(jack_nframes_t nframes, void *arg)
{
	struct jack_data *data = (struct jack_data *)arg;
	if (data == 0)
		return 0;

	FUNC6(&data->jack_mutex);

	struct obs_source_audio out;
	out.speakers = FUNC0(data->channels);
	out.samples_per_sec = FUNC2(data->jack_client);
	/* format is always 32 bit float for jack */
	out.format = AUDIO_FORMAT_FLOAT_PLANAR;

	for (unsigned int i = 0; i < data->channels; ++i) {
		jack_default_audio_sample_t *jack_buffer =
			(jack_default_audio_sample_t *)FUNC3(
				data->jack_ports[i], nframes);
		out.data[i] = (uint8_t *)jack_buffer;
	}

	out.frames = nframes;
	out.timestamp = FUNC5() -
			FUNC1(data->jack_client, nframes);

	FUNC4(data->source, &out);
	FUNC7(&data->jack_mutex);
	return 0;
}