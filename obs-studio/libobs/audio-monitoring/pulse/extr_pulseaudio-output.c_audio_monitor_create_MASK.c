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
struct audio_monitor {int /*<<< orphan*/  member_0; } ;
typedef  int /*<<< orphan*/  obs_source_t ;
typedef  int /*<<< orphan*/  monitor ;
struct TYPE_3__ {int /*<<< orphan*/  monitoring_mutex; int /*<<< orphan*/  monitors; } ;
struct TYPE_4__ {TYPE_1__ audio; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct audio_monitor*) ; 
 int /*<<< orphan*/  FUNC1 (struct audio_monitor*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct audio_monitor*) ; 
 struct audio_monitor* FUNC3 (struct audio_monitor*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct audio_monitor**) ; 
 TYPE_2__* obs ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

struct audio_monitor *FUNC7(obs_source_t *source)
{
	struct audio_monitor monitor = {0};
	struct audio_monitor *out;

	if (!FUNC1(&monitor, source))
		goto fail;

	out = FUNC3(&monitor, sizeof(monitor));

	FUNC5(&obs->audio.monitoring_mutex);
	FUNC4(obs->audio.monitors, &out);
	FUNC6(&obs->audio.monitoring_mutex);

	FUNC2(out);
	return out;

fail:
	FUNC0(&monitor);
	return NULL;
}