#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct compressor_data {int max_sidechain_frames; size_t num_channels; int /*<<< orphan*/  sidechain_mutex; TYPE_1__* sidechain_data; } ;
struct audio_data {int frames; int /*<<< orphan*/ * data; } ;
typedef  int /*<<< orphan*/  obs_source_t ;
struct TYPE_4__ {size_t size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(void *param, obs_source_t *source,
			      const struct audio_data *audio_data, bool muted)
{
	struct compressor_data *cd = param;

	FUNC0(source);

	FUNC4(&cd->sidechain_mutex);

	if (cd->max_sidechain_frames < audio_data->frames)
		cd->max_sidechain_frames = audio_data->frames;

	size_t expected_size = cd->max_sidechain_frames * sizeof(float);

	if (!expected_size)
		goto unlock;

	if (cd->sidechain_data[0].size > expected_size * 2) {
		for (size_t i = 0; i < cd->num_channels; i++) {
			FUNC1(&cd->sidechain_data[i], NULL,
					    expected_size);
		}
	}

	if (muted) {
		for (size_t i = 0; i < cd->num_channels; i++) {
			FUNC3(&cd->sidechain_data[i],
						 audio_data->frames *
							 sizeof(float));
		}
	} else {
		for (size_t i = 0; i < cd->num_channels; i++) {
			FUNC2(&cd->sidechain_data[i],
					    audio_data->data[i],
					    audio_data->frames * sizeof(float));
		}
	}

unlock:
	FUNC5(&cd->sidechain_mutex);
}