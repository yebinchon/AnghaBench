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
typedef  scalar_t__ uint32_t ;
struct noise_suppress_data {int suppress_level; size_t frames; size_t channels; void** segment_buffers; void** copy_buffers; scalar_t__* states; } ;
typedef  int /*<<< orphan*/  spx_int16_t ;
typedef  int /*<<< orphan*/  obs_data_t ;

/* Variables and functions */
 int /*<<< orphan*/  S_SUPPRESS_LEVEL ; 
 int /*<<< orphan*/  FUNC0 (struct noise_suppress_data*,scalar_t__,size_t,size_t) ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 void* FUNC3 (size_t) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static void FUNC6(void *data, obs_data_t *s)
{
	struct noise_suppress_data *ng = data;

	uint32_t sample_rate = FUNC2(FUNC5());
	size_t channels = FUNC1(FUNC5());
	size_t frames = (size_t)sample_rate / 100;

	ng->suppress_level = (int)FUNC4(s, S_SUPPRESS_LEVEL);

	/* Process 10 millisecond segments to keep latency low */
	ng->frames = frames;
	ng->channels = channels;

	/* Ignore if already allocated */
	if (ng->states[0])
		return;

	/* One speex state for each channel (limit 2) */
	ng->copy_buffers[0] = FUNC3(frames * channels * sizeof(float));
	ng->segment_buffers[0] =
		FUNC3(frames * channels * sizeof(spx_int16_t));
	for (size_t c = 1; c < channels; ++c) {
		ng->copy_buffers[c] = ng->copy_buffers[c - 1] + frames;
		ng->segment_buffers[c] = ng->segment_buffers[c - 1] + frames;
	}

	for (size_t i = 0; i < channels; i++)
		FUNC0(ng, sample_rate, i, frames);
}