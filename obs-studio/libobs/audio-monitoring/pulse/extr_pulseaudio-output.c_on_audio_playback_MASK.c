#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  size_t uint32_t ;
struct audio_monitor {size_t bytes_per_frame; size_t frames; int /*<<< orphan*/  playback_mutex; int /*<<< orphan*/  packets; int /*<<< orphan*/  new_data; int /*<<< orphan*/  resampler; } ;
struct audio_data {scalar_t__ frames; scalar_t__ data; } ;
struct TYPE_3__ {float user_volume; int /*<<< orphan*/  activate_refs; } ;
typedef  TYPE_1__ obs_source_t ;

/* Variables and functions */
 int /*<<< orphan*/  EPSILON ; 
 int MAX_AV_PLANES ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ **,size_t*,int /*<<< orphan*/ *,int /*<<< orphan*/  const* const*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC2 (float,float,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct audio_monitor*,float,int /*<<< orphan*/ **,size_t) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(void *param, obs_source_t *source,
			      const struct audio_data *audio_data, bool muted)
{
	struct audio_monitor *monitor = param;
	float vol = source->user_volume;
	size_t bytes;

	uint8_t *resample_data[MAX_AV_PLANES];
	uint32_t resample_frames;
	uint64_t ts_offset;
	bool success;

	if (FUNC7(&monitor->playback_mutex) != 0)
		return;

	if (FUNC5(&source->activate_refs) == 0)
		goto unlock;

	success = FUNC0(
		monitor->resampler, resample_data, &resample_frames, &ts_offset,
		(const uint8_t *const *)audio_data->data,
		(uint32_t)audio_data->frames);

	if (!success)
		goto unlock;

	bytes = monitor->bytes_per_frame * resample_frames;

	if (muted) {
		FUNC4(resample_data[0], 0, bytes);
	} else {
		if (!FUNC2(vol, 1.0f, EPSILON)) {
			FUNC6(monitor, vol, resample_data,
				       resample_frames);
		}
	}

	FUNC1(&monitor->new_data, resample_data[0], bytes);
	monitor->packets++;
	monitor->frames += resample_frames;

unlock:
	FUNC8(&monitor->playback_mutex);
	FUNC3(param);
}