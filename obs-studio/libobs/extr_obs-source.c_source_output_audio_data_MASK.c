#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_9__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
struct audio_data {scalar_t__ timestamp; int /*<<< orphan*/  frames; } ;
struct TYPE_12__ {scalar_t__ timing_adjust; int timing_set; scalar_t__ next_audio_ts_min; scalar_t__ last_audio_ts; scalar_t__ next_audio_sys_ts_min; scalar_t__ sync_offset; scalar_t__ resample_offset; scalar_t__ last_sync_offset; scalar_t__ monitoring_type; int /*<<< orphan*/  audio_buf_mutex; scalar_t__ audio_ts; scalar_t__ async_decoupled; scalar_t__ async_unbuffered; } ;
typedef  TYPE_2__ obs_source_t ;
typedef  scalar_t__ int64_t ;
struct TYPE_11__ {int /*<<< orphan*/  audio; } ;
struct TYPE_13__ {TYPE_1__ audio; } ;

/* Variables and functions */
 scalar_t__ MAX_TS_VAR ; 
 scalar_t__ OBS_MONITORING_TYPE_MONITOR_ONLY ; 
 scalar_t__ TS_SMOOTHING_THRESHOLD ; 
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 TYPE_9__* obs ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,struct audio_data*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,struct audio_data*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,struct audio_data const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static void FUNC12(obs_source_t *source,
				     const struct audio_data *data)
{
	size_t sample_rate = FUNC0(obs->audio.audio);
	struct audio_data in = *data;
	uint64_t diff;
	uint64_t os_time = FUNC3();
	int64_t sync_offset;
	bool using_direct_ts = false;
	bool push_back = false;

	/* detects 'directly' set timestamps as long as they're within
	 * a certain threshold */
	if (FUNC11(in.timestamp, os_time) < MAX_TS_VAR) {
		source->timing_adjust = 0;
		source->timing_set = true;
		using_direct_ts = true;
	}

	if (!source->timing_set) {
		FUNC6(source, in.timestamp, os_time);

	} else if (source->next_audio_ts_min != 0) {
		diff = FUNC11(source->next_audio_ts_min, in.timestamp);

		/* smooth audio if within threshold */
		if (diff > MAX_TS_VAR && !using_direct_ts)
			FUNC2(source, source->next_audio_ts_min,
				       in.timestamp, diff, os_time);
		else if (diff < TS_SMOOTHING_THRESHOLD) {
			if (source->async_unbuffered && source->async_decoupled)
				source->timing_adjust = os_time - in.timestamp;
			in.timestamp = source->next_audio_ts_min;
		}
	}

	source->last_audio_ts = in.timestamp;
	source->next_audio_ts_min =
		in.timestamp + FUNC1(sample_rate, in.frames);

	in.timestamp += source->timing_adjust;

	FUNC4(&source->audio_buf_mutex);

	if (source->next_audio_sys_ts_min == in.timestamp) {
		push_back = true;

	} else if (source->next_audio_sys_ts_min) {
		diff = FUNC11(source->next_audio_sys_ts_min, in.timestamp);

		if (diff < TS_SMOOTHING_THRESHOLD) {
			push_back = true;

			/* This typically only happens if used with async video when
		 * audio/video start transitioning in to a timestamp jump.
		 * Audio will typically have a timestamp jump, and then video
		 * will have a timestamp jump.  If that case is encountered,
		 * just clear the audio data in that small window and force a
		 * resync.  This handles all cases rather than just looping. */
		} else if (diff > MAX_TS_VAR) {
			FUNC6(source, data->timestamp, os_time);
			in.timestamp = data->timestamp + source->timing_adjust;
		}
	}

	sync_offset = source->sync_offset;
	in.timestamp += sync_offset;
	in.timestamp -= source->resample_offset;

	source->next_audio_sys_ts_min =
		source->next_audio_ts_min + source->timing_adjust;

	if (source->last_sync_offset != sync_offset) {
		if (source->last_sync_offset)
			push_back = false;
		source->last_sync_offset = sync_offset;
	}

	if (source->monitoring_type != OBS_MONITORING_TYPE_MONITOR_ONLY) {
		if (push_back && source->audio_ts)
			FUNC9(source, &in);
		else
			FUNC8(source, &in);
	}

	FUNC5(&source->audio_buf_mutex);

	FUNC10(source, data, FUNC7(source, os_time));
}