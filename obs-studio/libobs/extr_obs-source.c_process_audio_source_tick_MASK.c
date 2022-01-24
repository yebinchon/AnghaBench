#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_6__ {int output_flags; } ;
struct TYPE_7__ {int audio_pending; int audio_mixers; int /*<<< orphan*/ ** audio_output_buf; int /*<<< orphan*/  audio_buf_mutex; TYPE_4__* audio_input_buf; TYPE_1__ info; } ;
typedef  TYPE_2__ obs_source_t ;
struct TYPE_8__ {size_t size; } ;

/* Variables and functions */
 size_t MAX_AUDIO_MIXES ; 
 int OBS_SOURCE_SUBMIX ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC6(obs_source_t *source,
					     uint32_t mixers, size_t channels,
					     size_t sample_rate, size_t size)
{
	bool audio_submix = !!(source->info.output_flags & OBS_SOURCE_SUBMIX);

	FUNC4(&source->audio_buf_mutex);

	if (source->audio_input_buf[0].size < size) {
		source->audio_pending = true;
		FUNC5(&source->audio_buf_mutex);
		return;
	}

	for (size_t ch = 0; ch < channels; ch++)
		FUNC1(&source->audio_input_buf[ch],
				     source->audio_output_buf[0][ch], size);

	FUNC5(&source->audio_buf_mutex);

	for (size_t mix = 1; mix < MAX_AUDIO_MIXES; mix++) {
		uint32_t mix_and_val = (1 << mix);

		if (audio_submix) {
			if (mix > 1)
				break;

			mixers = 1;
			mix_and_val = 1;
		}

		if ((source->audio_mixers & mix_and_val) == 0 ||
		    (mixers & mix_and_val) == 0) {
			FUNC3(source->audio_output_buf[mix][0], 0,
			       size * channels);
			continue;
		}

		for (size_t ch = 0; ch < channels; ch++)
			FUNC2(source->audio_output_buf[mix][ch],
			       source->audio_output_buf[0][ch], size);
	}

	if (audio_submix) {
		source->audio_pending = false;
		return;
	}

	if ((source->audio_mixers & 1) == 0 || (mixers & 1) == 0)
		FUNC3(source->audio_output_buf[0][0], 0, size * channels);

	FUNC0(source, mixers, channels, sample_rate);
	source->audio_pending = false;
}