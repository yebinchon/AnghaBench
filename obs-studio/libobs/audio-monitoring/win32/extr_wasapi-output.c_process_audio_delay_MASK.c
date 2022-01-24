#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int uint64_t ;
typedef  float uint32_t ;
typedef  int /*<<< orphan*/  ts ;
struct TYPE_8__ {float* array; } ;
struct TYPE_9__ {scalar_t__ size; } ;
struct audio_monitor {int channels; int last_recv_time; int prev_video_ts; int time_since_prev; TYPE_2__ buf; TYPE_3__ delay_buffer; scalar_t__ sample_rate; TYPE_1__* source; } ;
struct TYPE_7__ {int last_frame_ts; scalar_t__ sync_offset; } ;
typedef  TYPE_1__ obs_source_t ;
typedef  int int64_t ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_INFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,float*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,...) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__,size_t) ; 
 int FUNC6 (int) ; 
 int FUNC7 () ; 

__attribute__((used)) static bool FUNC8(struct audio_monitor *monitor, float **data,
				uint32_t *frames, uint64_t ts, uint32_t pad)
{
	obs_source_t *s = monitor->source;
	uint64_t last_frame_ts = s->last_frame_ts;
	uint64_t cur_time = FUNC7();
	uint64_t front_ts;
	uint64_t cur_ts;
	int64_t diff;
	uint32_t blocksize = monitor->channels * sizeof(float);

	/* cut off audio if long-since leftover audio in delay buffer */
	if (cur_time - monitor->last_recv_time > 1000000000)
		FUNC1(&monitor->delay_buffer);
	monitor->last_recv_time = cur_time;

	ts += monitor->source->sync_offset;

	FUNC4(&monitor->delay_buffer, &ts, sizeof(ts));
	FUNC4(&monitor->delay_buffer, frames, sizeof(*frames));
	FUNC4(&monitor->delay_buffer, *data, *frames * blocksize);

	if (!monitor->prev_video_ts) {
		monitor->prev_video_ts = last_frame_ts;

	} else if (monitor->prev_video_ts == last_frame_ts) {
		monitor->time_since_prev += (uint64_t)*frames * 1000000000ULL /
					    (uint64_t)monitor->sample_rate;
	} else {
		monitor->time_since_prev = 0;
	}

	while (monitor->delay_buffer.size != 0) {
		size_t size;
		bool bad_diff;

		FUNC2(&monitor->delay_buffer, &cur_ts,
				     sizeof(ts));
		front_ts = cur_ts - ((uint64_t)pad * 1000000000ULL /
				     (uint64_t)monitor->sample_rate);
		diff = (int64_t)front_ts - (int64_t)last_frame_ts;
		bad_diff = !last_frame_ts || FUNC6(diff) > 5000000000 ||
			   monitor->time_since_prev > 100000000ULL;

		/* delay audio if rushing */
		if (!bad_diff && diff > 75000000) {
#ifdef DEBUG_AUDIO
			blog(LOG_INFO,
			     "audio rushing, cutting audio, "
			     "diff: %lld, delay buffer size: %lu, "
			     "v: %llu: a: %llu",
			     diff, (int)monitor->delay_buffer.size,
			     last_frame_ts, front_ts);
#endif
			return false;
		}

		FUNC3(&monitor->delay_buffer, NULL, sizeof(ts));
		FUNC3(&monitor->delay_buffer, frames,
				    sizeof(*frames));

		size = *frames * blocksize;
		FUNC5(monitor->buf, size);
		FUNC3(&monitor->delay_buffer, monitor->buf.array,
				    size);

		/* cut audio if dragging */
		if (!bad_diff && diff < -75000000 &&
		    monitor->delay_buffer.size > 0) {
#ifdef DEBUG_AUDIO
			blog(LOG_INFO,
			     "audio dragging, cutting audio, "
			     "diff: %lld, delay buffer size: %lu, "
			     "v: %llu: a: %llu",
			     diff, (int)monitor->delay_buffer.size,
			     last_frame_ts, front_ts);
#endif
			continue;
		}

		*data = monitor->buf.array;
		return true;
	}

	return false;
}