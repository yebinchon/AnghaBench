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
struct obs_scene_item {struct obs_scene_item* next; int /*<<< orphan*/  source; scalar_t__ visible; } ;
struct obs_scene {struct obs_scene_item* first_item; } ;
struct TYPE_2__ {float** data; } ;

/* Variables and functions */
 size_t AUDIO_OUTPUT_FRAMES ; 
 size_t MAX_AUDIO_MIXES ; 
 int FUNC0 (struct obs_scene_item*,float**,scalar_t__,size_t) ; 
 int /*<<< orphan*/  FUNC1 (struct obs_scene*) ; 
 int /*<<< orphan*/  FUNC2 (struct obs_scene*) ; 
 int /*<<< orphan*/  FUNC3 (float*) ; 
 int /*<<< orphan*/  FUNC4 (float*,float*,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC5 (float*,float*,float*,size_t,size_t) ; 
 scalar_t__ FUNC6 (size_t,scalar_t__) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct obs_source_audio_mix*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct obs_scene_item*,size_t) ; 

__attribute__((used)) static bool FUNC11(void *data, uint64_t *ts_out,
			       struct obs_source_audio_mix *audio_output,
			       uint32_t mixers, size_t channels,
			       size_t sample_rate)
{
	uint64_t timestamp = 0;
	float *buf = NULL;
	struct obs_source_audio_mix child_audio;
	struct obs_scene *scene = data;
	struct obs_scene_item *item;

	FUNC1(scene);

	item = scene->first_item;
	while (item) {
		if (!FUNC7(item->source) && item->visible) {
			uint64_t source_ts =
				FUNC9(item->source);

			if (source_ts && (!timestamp || source_ts < timestamp))
				timestamp = source_ts;
		}

		item = item->next;
	}

	if (!timestamp) {
		/* just process all pending audio actions if no audio playing,
		 * otherwise audio actions will just never be processed */
		item = scene->first_item;
		while (item) {
			FUNC10(item, sample_rate);
			item = item->next;
		}

		FUNC2(scene);
		return false;
	}

	item = scene->first_item;
	while (item) {
		uint64_t source_ts;
		size_t pos, count;
		bool apply_buf;

		apply_buf = FUNC0(item, &buf, timestamp,
						    sample_rate);

		if (FUNC7(item->source)) {
			item = item->next;
			continue;
		}

		source_ts = FUNC9(item->source);
		if (!source_ts) {
			item = item->next;
			continue;
		}

		pos = (size_t)FUNC6(sample_rate,
						 source_ts - timestamp);
		count = AUDIO_OUTPUT_FRAMES - pos;

		if (!apply_buf && !item->visible) {
			item = item->next;
			continue;
		}

		FUNC8(item->source, &child_audio);
		for (size_t mix = 0; mix < MAX_AUDIO_MIXES; mix++) {
			if ((mixers & (1 << mix)) == 0)
				continue;

			for (size_t ch = 0; ch < channels; ch++) {
				float *out = audio_output->output[mix].data[ch];
				float *in = child_audio.output[mix].data[ch];

				if (apply_buf)
					FUNC5(out, in, buf, pos,
							   count);
				else
					FUNC4(out, in, pos, count);
			}
		}

		item = item->next;
	}

	*ts_out = timestamp;
	FUNC2(scene);

	FUNC3(buf);
	return true;
}