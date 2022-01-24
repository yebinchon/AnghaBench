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
struct audio_monitor {int /*<<< orphan*/  source; scalar_t__ ignore; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct audio_monitor*) ; 
 int /*<<< orphan*/  on_audio_playback ; 

__attribute__((used)) static void FUNC1(struct audio_monitor *monitor)
{
	if (monitor->ignore)
		return;

	FUNC0(monitor->source,
					      on_audio_playback, monitor);
}