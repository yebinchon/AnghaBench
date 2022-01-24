#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct calldata {int dummy; } ;
struct audio_action {float vol; int /*<<< orphan*/  type; int /*<<< orphan*/  timestamp; } ;
typedef  int /*<<< orphan*/  stack ;
struct TYPE_7__ {int /*<<< orphan*/  private; int /*<<< orphan*/  signals; } ;
struct TYPE_8__ {float user_volume; int /*<<< orphan*/  audio_actions_mutex; int /*<<< orphan*/  audio_actions; TYPE_1__ context; } ;
typedef  TYPE_2__ obs_source_t ;
struct TYPE_9__ {int /*<<< orphan*/  signals; } ;

/* Variables and functions */
 int /*<<< orphan*/  AUDIO_ACTION_VOL ; 
 scalar_t__ FUNC0 (struct calldata*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct calldata*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (struct calldata*,char*,float) ; 
 int /*<<< orphan*/  FUNC3 (struct calldata*,char*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct audio_action*) ; 
 TYPE_5__* obs ; 
 scalar_t__ FUNC5 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,struct calldata*) ; 

void FUNC10(obs_source_t *source, float volume)
{
	if (FUNC5(source, "obs_source_set_volume")) {
		struct audio_action action = {.timestamp = FUNC6(),
					      .type = AUDIO_ACTION_VOL,
					      .vol = volume};

		struct calldata data;
		uint8_t stack[128];

		FUNC1(&data, stack, sizeof(stack));
		FUNC3(&data, "source", source);
		FUNC2(&data, "volume", volume);

		FUNC9(source->context.signals, "volume", &data);
		if (!source->context.private)
			FUNC9(obs->signals, "source_volume",
					      &data);

		volume = (float)FUNC0(&data, "volume");

		FUNC7(&source->audio_actions_mutex);
		FUNC4(source->audio_actions, &action);
		FUNC8(&source->audio_actions_mutex);

		source->user_volume = volume;
	}
}