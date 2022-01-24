#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct ng_audio_info {int frames; scalar_t__ timestamp; } ;
typedef  struct ng_audio_info uint8_t ;
struct obs_audio_data {int frames; scalar_t__ timestamp; struct ng_audio_info** data; } ;
struct TYPE_5__ {int /*<<< orphan*/ * array; } ;
struct TYPE_6__ {size_t size; } ;
struct noise_suppress_data {int frames; size_t channels; struct obs_audio_data output_audio; TYPE_2__* output_buffers; TYPE_1__ output_data; TYPE_2__ info_buffer; TYPE_2__* input_buffers; scalar_t__ last_timestamp; int /*<<< orphan*/ * states; } ;
typedef  long long int64_t ;
typedef  int /*<<< orphan*/  info ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,struct ng_audio_info*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,struct ng_audio_info*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,struct ng_audio_info*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__,size_t) ; 
 long long FUNC4 (long long) ; 
 int /*<<< orphan*/  FUNC5 (struct ng_audio_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct noise_suppress_data*) ; 
 int /*<<< orphan*/  FUNC7 (struct noise_suppress_data*) ; 

__attribute__((used)) static struct obs_audio_data *
FUNC8(void *data, struct obs_audio_data *audio)
{
	struct noise_suppress_data *ng = data;
	struct ng_audio_info info;
	size_t segment_size = ng->frames * sizeof(float);
	size_t out_size;

	if (!ng->states[0])
		return audio;

	/* -----------------------------------------------
	 * if timestamp has dramatically changed, consider it a new stream of
	 * audio data.  clear all circular buffers to prevent old audio data
	 * from being processed as part of the new data. */
	if (ng->last_timestamp) {
		int64_t diff = FUNC4((int64_t)ng->last_timestamp -
				     (int64_t)audio->timestamp);

		if (diff > 1000000000LL)
			FUNC7(ng);
	}

	ng->last_timestamp = audio->timestamp;

	/* -----------------------------------------------
	 * push audio packet info (timestamp/frame count) to info circlebuf */
	info.frames = audio->frames;
	info.timestamp = audio->timestamp;
	FUNC2(&ng->info_buffer, &info, sizeof(info));

	/* -----------------------------------------------
	 * push back current audio data to input circlebuf */
	for (size_t i = 0; i < ng->channels; i++)
		FUNC2(&ng->input_buffers[i], audio->data[i],
				    audio->frames * sizeof(float));

	/* -----------------------------------------------
	 * pop/process each 10ms segments, push back to output circlebuf */
	while (ng->input_buffers[0].size >= segment_size)
		FUNC6(ng);

	/* -----------------------------------------------
	 * peek front of info circlebuf, check to see if we have enough to
	 * pop the expected packet size, if not, return null */
	FUNC5(&info, 0, sizeof(info));
	FUNC0(&ng->info_buffer, &info, sizeof(info));
	out_size = info.frames * sizeof(float);

	if (ng->output_buffers[0].size < out_size)
		return NULL;

	/* -----------------------------------------------
	 * if there's enough audio data buffered in the output circlebuf,
	 * pop and return a packet */
	FUNC1(&ng->info_buffer, NULL, sizeof(info));
	FUNC3(ng->output_data, out_size * ng->channels);

	for (size_t i = 0; i < ng->channels; i++) {
		ng->output_audio.data[i] =
			(uint8_t *)&ng->output_data.array[i * out_size];

		FUNC1(&ng->output_buffers[i],
				    ng->output_audio.data[i], out_size);
	}

	ng->output_audio.frames = info.frames;
	ng->output_audio.timestamp = info.timestamp;
	return &ng->output_audio;
}