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
struct obs_core_hotkeys {int hotkey_thread_initialized; int /*<<< orphan*/  stop_event; int /*<<< orphan*/  hotkey_thread; } ;
struct TYPE_2__ {struct obs_core_hotkeys hotkeys; } ;

/* Variables and functions */
 TYPE_1__* obs ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,void**) ; 

__attribute__((used)) static inline void FUNC4(void)
{
	struct obs_core_hotkeys *hotkeys = &obs->hotkeys;
	void *thread_ret;

	if (hotkeys->hotkey_thread_initialized) {
		FUNC2(hotkeys->stop_event);
		FUNC3(hotkeys->hotkey_thread, &thread_ret);
		hotkeys->hotkey_thread_initialized = false;
	}

	FUNC1(hotkeys->stop_event);
	FUNC0();
}