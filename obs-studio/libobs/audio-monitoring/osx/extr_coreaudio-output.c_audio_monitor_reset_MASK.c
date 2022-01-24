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
struct audio_monitor {int /*<<< orphan*/ * source; } ;
typedef  int /*<<< orphan*/  obs_source_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct audio_monitor*) ; 
 int FUNC1 (struct audio_monitor*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct audio_monitor*) ; 
 int /*<<< orphan*/  FUNC3 (struct audio_monitor*,int /*<<< orphan*/ ,int) ; 

void FUNC4(struct audio_monitor *monitor)
{
	bool success;

	obs_source_t *source = monitor->source;
	FUNC0(monitor);
	FUNC3(monitor, 0, sizeof(*monitor));

	success = FUNC1(monitor, source);
	if (success)
		FUNC2(monitor);
}