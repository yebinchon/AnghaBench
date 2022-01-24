#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct obs_source_audio {int dummy; } ;
struct obs_audio_data {int /*<<< orphan*/  timestamp; int /*<<< orphan*/  frames; int /*<<< orphan*/ * data; } ;
struct audio_data {int /*<<< orphan*/  timestamp; int /*<<< orphan*/  frames; int /*<<< orphan*/ * data; } ;
struct TYPE_7__ {int /*<<< orphan*/  filter_mutex; int /*<<< orphan*/  audio_mutex; int /*<<< orphan*/  audio_data; } ;
typedef  TYPE_1__ obs_source_t ;

/* Variables and functions */
 int MAX_AV_PLANES ; 
 struct obs_audio_data* FUNC0 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct obs_source_audio const*,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,struct obs_source_audio const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,struct audio_data*) ; 

void FUNC7(obs_source_t *source,
			     const struct obs_source_audio *audio)
{
	struct obs_audio_data *output;

	if (!FUNC2(source, "obs_source_output_audio"))
		return;
	if (!FUNC1(audio, "obs_source_output_audio"))
		return;

	FUNC3(source, audio);

	FUNC4(&source->filter_mutex);
	output = FUNC0(source, &source->audio_data);

	if (output) {
		struct audio_data data;

		for (int i = 0; i < MAX_AV_PLANES; i++)
			data.data[i] = output->data[i];

		data.frames = output->frames;
		data.timestamp = output->timestamp;

		FUNC4(&source->audio_mutex);
		FUNC6(source, &data);
		FUNC5(&source->audio_mutex);
	}

	FUNC5(&source->filter_mutex);
}