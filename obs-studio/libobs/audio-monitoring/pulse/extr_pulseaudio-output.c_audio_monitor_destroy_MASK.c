#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct audio_monitor {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  monitoring_mutex; int /*<<< orphan*/  monitors; } ;
struct TYPE_4__ {TYPE_1__ audio; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct audio_monitor*) ; 
 int /*<<< orphan*/  FUNC1 (struct audio_monitor*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct audio_monitor**) ; 
 TYPE_2__* obs ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct audio_monitor *monitor)
{
	if (monitor) {
		FUNC0(monitor);

		FUNC3(&obs->audio.monitoring_mutex);
		FUNC2(obs->audio.monitors, &monitor);
		FUNC4(&obs->audio.monitoring_mutex);

		FUNC1(monitor);
	}
}