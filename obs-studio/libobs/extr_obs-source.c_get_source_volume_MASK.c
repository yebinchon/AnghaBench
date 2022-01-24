#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
struct TYPE_3__ {scalar_t__ push_to_mute_stop_time; int push_to_mute_delay; scalar_t__ push_to_talk_stop_time; int push_to_talk_delay; float volume; scalar_t__ push_to_talk_enabled; scalar_t__ push_to_mute_enabled; int /*<<< orphan*/  muted; int /*<<< orphan*/  enabled; scalar_t__ push_to_talk_pressed; scalar_t__ push_to_mute_pressed; } ;
typedef  TYPE_1__ obs_source_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (float,float,float) ; 

__attribute__((used)) static float FUNC1(obs_source_t *source, uint64_t os_time)
{
	if (source->push_to_mute_enabled && source->push_to_mute_pressed)
		source->push_to_mute_stop_time =
			os_time + source->push_to_mute_delay * 1000000;

	if (source->push_to_talk_enabled && source->push_to_talk_pressed)
		source->push_to_talk_stop_time =
			os_time + source->push_to_talk_delay * 1000000;

	bool push_to_mute_active = source->push_to_mute_pressed ||
				   os_time < source->push_to_mute_stop_time;
	bool push_to_talk_active = source->push_to_talk_pressed ||
				   os_time < source->push_to_talk_stop_time;

	bool muted = !source->enabled || source->muted ||
		     (source->push_to_mute_enabled && push_to_mute_active) ||
		     (source->push_to_talk_enabled && !push_to_talk_active);

	if (muted || FUNC0(source->volume, 0.0f, 0.0001f))
		return 0.0f;
	if (FUNC0(source->volume, 1.0f, 0.0001f))
		return 1.0f;

	return source->volume;
}