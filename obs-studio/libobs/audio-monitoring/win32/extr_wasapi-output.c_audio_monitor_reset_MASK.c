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
struct audio_monitor {int /*<<< orphan*/ * source; int /*<<< orphan*/  playback_mutex; int /*<<< orphan*/  member_0; } ;
typedef  int /*<<< orphan*/  obs_source_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct audio_monitor*) ; 
 int FUNC1 (struct audio_monitor*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct audio_monitor*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct audio_monitor *monitor)
{
	struct audio_monitor new_monitor = {0};
	bool success;

	FUNC3(&monitor->playback_mutex);
	success = FUNC1(&new_monitor, monitor->source);
	FUNC4(&monitor->playback_mutex);

	if (success) {
		obs_source_t *source = monitor->source;
		FUNC0(monitor);
		*monitor = new_monitor;
		FUNC2(monitor);
	} else {
		FUNC0(&new_monitor);
	}
}