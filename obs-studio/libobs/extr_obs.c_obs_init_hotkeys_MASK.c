#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct obs_core_hotkeys {int hotkey_thread_initialized; int /*<<< orphan*/  hotkey_thread; int /*<<< orphan*/  stop_event; int /*<<< orphan*/  mutex; void* sceneitem_hide; void* sceneitem_show; void* push_to_talk; void* push_to_mute; void* unmute; void* mute; int /*<<< orphan*/  name_map_init_token; int /*<<< orphan*/  signals; int /*<<< orphan*/  hotkeys; } ;
typedef  int /*<<< orphan*/  pthread_mutexattr_t ;
struct TYPE_2__ {int /*<<< orphan*/  signals; struct obs_core_hotkeys hotkeys; } ;

/* Variables and functions */
 int /*<<< orphan*/  OS_EVENT_TYPE_MANUAL ; 
 int /*<<< orphan*/  PTHREAD_MUTEX_RECURSIVE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_1__* obs ; 
 int /*<<< orphan*/  obs_hotkey_thread ; 
 int /*<<< orphan*/  FUNC3 (struct obs_core_hotkeys*) ; 
 int /*<<< orphan*/  obs_pthread_once_init_token ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline bool FUNC10(void)
{
	struct obs_core_hotkeys *hotkeys = &obs->hotkeys;
	pthread_mutexattr_t attr;
	bool success = false;

	FUNC0(hotkeys != NULL);

	FUNC2(hotkeys->hotkeys);
	hotkeys->signals = obs->signals;
	hotkeys->name_map_init_token = obs_pthread_once_init_token;
	hotkeys->mute = FUNC1("Mute");
	hotkeys->unmute = FUNC1("Unmute");
	hotkeys->push_to_mute = FUNC1("Push-to-mute");
	hotkeys->push_to_talk = FUNC1("Push-to-talk");
	hotkeys->sceneitem_show = FUNC1("Show '%1'");
	hotkeys->sceneitem_hide = FUNC1("Hide '%1'");

	if (!FUNC3(hotkeys))
		return false;

	if (FUNC8(&attr) != 0)
		return false;
	if (FUNC9(&attr, PTHREAD_MUTEX_RECURSIVE) != 0)
		goto fail;
	if (FUNC6(&hotkeys->mutex, &attr) != 0)
		goto fail;

	if (FUNC4(&hotkeys->stop_event, OS_EVENT_TYPE_MANUAL) != 0)
		goto fail;
	if (FUNC5(&hotkeys->hotkey_thread, NULL, obs_hotkey_thread,
			   NULL))
		goto fail;

	hotkeys->hotkey_thread_initialized = true;

	success = true;

fail:
	FUNC7(&attr);
	return success;
}