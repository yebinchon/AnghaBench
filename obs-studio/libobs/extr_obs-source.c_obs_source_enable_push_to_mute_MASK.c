#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int push_to_mute_enabled; int /*<<< orphan*/  audio_mutex; } ;
typedef  TYPE_1__ obs_source_t ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_INFO ; 
 int OBS_SOURCE_AUDIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,char*,int) ; 

void FUNC7(obs_source_t *source, bool enabled)
{
	if (!FUNC3(source, "obs_source_enable_push_to_mute"))
		return;

	FUNC4(&source->audio_mutex);
	bool changed = source->push_to_mute_enabled != enabled;
	if (FUNC2(source) & OBS_SOURCE_AUDIO && changed)
		FUNC0(LOG_INFO, "source '%s' %s push-to-mute",
		     FUNC1(source),
		     enabled ? "enabled" : "disabled");

	source->push_to_mute_enabled = enabled;

	if (changed)
		FUNC6(source, "push_to_mute_changed",
					      enabled);
	FUNC5(&source->audio_mutex);
}