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
struct audio_monitor {int /*<<< orphan*/  mutex; int /*<<< orphan*/  new_data; int /*<<< orphan*/  empty_buffers; int /*<<< orphan*/  resampler; scalar_t__ queue; scalar_t__* buffers; scalar_t__ active; scalar_t__ source; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ,struct audio_monitor*) ; 
 int /*<<< orphan*/  on_audio_playback ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct audio_monitor *monitor)
{
	if (monitor->source) {
		FUNC5(
			monitor->source, on_audio_playback, monitor);
	}
	if (monitor->active) {
		FUNC2(monitor->queue, true);
	}
	for (size_t i = 0; i < 3; i++) {
		if (monitor->buffers[i]) {
			FUNC1(monitor->queue,
					     monitor->buffers[i]);
		}
	}
	if (monitor->queue) {
		FUNC0(monitor->queue, true);
	}

	FUNC3(monitor->resampler);
	FUNC4(&monitor->empty_buffers);
	FUNC4(&monitor->new_data);
	FUNC6(&monitor->mutex);
}