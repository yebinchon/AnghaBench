#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_7__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct obs_source_audio {scalar_t__ samples_per_sec; scalar_t__ format; scalar_t__ speakers; int /*<<< orphan*/  timestamp; int /*<<< orphan*/  frames; int /*<<< orphan*/  const* const* data; } ;
typedef  int /*<<< orphan*/  output ;
struct TYPE_11__ {scalar_t__ samples_per_sec; scalar_t__ format; scalar_t__ speakers; } ;
struct TYPE_12__ {float balance; int flags; TYPE_2__ sample_info; int /*<<< orphan*/  resample_offset; scalar_t__ resampler; scalar_t__ audio_failed; } ;
typedef  TYPE_3__ obs_source_t ;
struct TYPE_10__ {int /*<<< orphan*/  audio; } ;
struct TYPE_13__ {TYPE_1__ audio; } ;

/* Variables and functions */
 int MAX_AV_PLANES ; 
 int /*<<< orphan*/  OBS_BALANCE_TYPE_SINE_LAW ; 
 int OBS_SOURCE_FLAG_FORCE_MONO ; 
 scalar_t__ SPEAKERS_STEREO ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const* const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/  const* const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int) ; 
 TYPE_7__* obs ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int /*<<< orphan*/ ,float,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,struct obs_source_audio const*) ; 

__attribute__((used)) static void FUNC7(obs_source_t *source,
			  const struct obs_source_audio *audio)
{
	uint32_t frames = audio->frames;
	bool mono_output;

	if (source->sample_info.samples_per_sec != audio->samples_per_sec ||
	    source->sample_info.format != audio->format ||
	    source->sample_info.speakers != audio->speakers)
		FUNC6(source, audio);

	if (source->audio_failed)
		return;

	if (source->resampler) {
		uint8_t *output[MAX_AV_PLANES];

		FUNC4(output, 0, sizeof(output));

		FUNC1(source->resampler, output, &frames,
					 &source->resample_offset, audio->data,
					 audio->frames);

		FUNC2(source, (const uint8_t *const *)output, frames,
				audio->timestamp);
	} else {
		FUNC2(source, audio->data, audio->frames,
				audio->timestamp);
	}

	mono_output = FUNC0(obs->audio.audio) == 1;

	if (!mono_output && source->sample_info.speakers == SPEAKERS_STEREO &&
	    (source->balance > 0.51f || source->balance < 0.49f)) {
		FUNC5(source, frames, source->balance,
					OBS_BALANCE_TYPE_SINE_LAW);
	}

	if (!mono_output && (source->flags & OBS_SOURCE_FLAG_FORCE_MONO) != 0)
		FUNC3(source, frames);
}