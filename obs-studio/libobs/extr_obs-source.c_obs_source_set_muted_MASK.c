#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct calldata {int dummy; } ;
struct audio_action {int set; int /*<<< orphan*/  type; int /*<<< orphan*/  timestamp; } ;
typedef  int /*<<< orphan*/  stack ;
struct TYPE_6__ {int /*<<< orphan*/  signals; } ;
struct TYPE_7__ {int user_muted; int /*<<< orphan*/  audio_actions_mutex; int /*<<< orphan*/  audio_actions; TYPE_1__ context; } ;
typedef  TYPE_2__ obs_source_t ;

/* Variables and functions */
 int /*<<< orphan*/  AUDIO_ACTION_MUTE ; 
 int /*<<< orphan*/  FUNC0 (struct calldata*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (struct calldata*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct calldata*,char*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct audio_action*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,struct calldata*) ; 

void FUNC9(obs_source_t *source, bool muted)
{
	struct calldata data;
	uint8_t stack[128];
	struct audio_action action = {.timestamp = FUNC5(),
				      .type = AUDIO_ACTION_MUTE,
				      .set = muted};

	if (!FUNC4(source, "obs_source_set_muted"))
		return;

	source->user_muted = muted;

	FUNC0(&data, stack, sizeof(stack));
	FUNC2(&data, "source", source);
	FUNC1(&data, "muted", muted);

	FUNC8(source->context.signals, "mute", &data);

	FUNC6(&source->audio_actions_mutex);
	FUNC3(source->audio_actions, &action);
	FUNC7(&source->audio_actions_mutex);
}