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
struct audio_monitor {int /*<<< orphan*/  device; scalar_t__ stream; int /*<<< orphan*/  new_data; int /*<<< orphan*/  resampler; scalar_t__ source; scalar_t__ ignore; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ,struct audio_monitor*) ; 
 int /*<<< orphan*/  on_audio_playback ; 
 int /*<<< orphan*/  FUNC4 (struct audio_monitor*) ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static inline void FUNC6(struct audio_monitor *monitor)
{
	if (monitor->ignore)
		return;

	if (monitor->source)
		FUNC3(
			monitor->source, on_audio_playback, monitor);

	FUNC0(monitor->resampler);
	FUNC2(&monitor->new_data);

	if (monitor->stream)
		FUNC4(monitor);
	FUNC5();

	FUNC1(monitor->device);
}