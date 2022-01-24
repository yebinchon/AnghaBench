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
typedef  int /*<<< orphan*/  vframe_info ;
typedef  int uint64_t ;
struct obs_vframe_info {int timestamp; int count; } ;
struct obs_core_video {int total_frames; int lagged_frames; int /*<<< orphan*/  vframe_info_buffer_gpu; int /*<<< orphan*/  vframe_info_buffer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct obs_vframe_info*,int) ; 
 int FUNC1 () ; 
 scalar_t__ FUNC2 (int) ; 

__attribute__((used)) static inline void FUNC3(struct obs_core_video *video, bool raw_active,
			       const bool gpu_active, uint64_t *p_time,
			       uint64_t interval_ns)
{
	struct obs_vframe_info vframe_info;
	uint64_t cur_time = *p_time;
	uint64_t t = cur_time + interval_ns;
	int count;

	if (FUNC2(t)) {
		*p_time = t;
		count = 1;
	} else {
		count = (int)((FUNC1() - cur_time) / interval_ns);
		*p_time = cur_time + interval_ns * count;
	}

	video->total_frames += count;
	video->lagged_frames += count - 1;

	vframe_info.timestamp = cur_time;
	vframe_info.count = count;

	if (raw_active)
		FUNC0(&video->vframe_info_buffer, &vframe_info,
				    sizeof(vframe_info));
	if (gpu_active)
		FUNC0(&video->vframe_info_buffer_gpu,
				    &vframe_info, sizeof(vframe_info));
}