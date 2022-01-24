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
struct obs_source {int user_push_to_talk_pressed; int /*<<< orphan*/  audio_actions_mutex; int /*<<< orphan*/  audio_actions; } ;
struct audio_action {int set; int /*<<< orphan*/  type; int /*<<< orphan*/  timestamp; } ;
typedef  int /*<<< orphan*/  obs_hotkey_t ;
typedef  int /*<<< orphan*/ * obs_hotkey_id ;

/* Variables and functions */
 int /*<<< orphan*/  AUDIO_ACTION_PTT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct audio_action*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(void *data, obs_hotkey_id id,
					   obs_hotkey_t *key, bool pressed)
{
	struct audio_action action = {.timestamp = FUNC2(),
				      .type = AUDIO_ACTION_PTT,
				      .set = pressed};

	FUNC0(id);
	FUNC0(key);

	struct obs_source *source = data;

	FUNC3(&source->audio_actions_mutex);
	FUNC1(source->audio_actions, &action);
	FUNC4(&source->audio_actions_mutex);

	source->user_push_to_talk_pressed = pressed;
}