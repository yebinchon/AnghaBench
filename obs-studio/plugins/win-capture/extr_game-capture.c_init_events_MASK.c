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
struct game_capture {void* hook_exit; void* hook_ready; void* hook_init; void* hook_stop; void* hook_restart; } ;

/* Variables and functions */
 int /*<<< orphan*/  EVENT_CAPTURE_RESTART ; 
 int /*<<< orphan*/  EVENT_CAPTURE_STOP ; 
 int /*<<< orphan*/  EVENT_HOOK_EXIT ; 
 int /*<<< orphan*/  EVENT_HOOK_INIT ; 
 int /*<<< orphan*/  EVENT_HOOK_READY ; 
 int /*<<< orphan*/  FUNC0 () ; 
 void* FUNC1 (struct game_capture*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline bool FUNC3(struct game_capture *gc)
{
	if (!gc->hook_restart) {
		gc->hook_restart = FUNC1(gc, EVENT_CAPTURE_RESTART);
		if (!gc->hook_restart) {
			FUNC2("init_events: failed to get hook_restart "
			     "event: %lu",
			     FUNC0());
			return false;
		}
	}

	if (!gc->hook_stop) {
		gc->hook_stop = FUNC1(gc, EVENT_CAPTURE_STOP);
		if (!gc->hook_stop) {
			FUNC2("init_events: failed to get hook_stop event: %lu",
			     FUNC0());
			return false;
		}
	}

	if (!gc->hook_init) {
		gc->hook_init = FUNC1(gc, EVENT_HOOK_INIT);
		if (!gc->hook_init) {
			FUNC2("init_events: failed to get hook_init event: %lu",
			     FUNC0());
			return false;
		}
	}

	if (!gc->hook_ready) {
		gc->hook_ready = FUNC1(gc, EVENT_HOOK_READY);
		if (!gc->hook_ready) {
			FUNC2("init_events: failed to get hook_ready event: %lu",
			     FUNC0());
			return false;
		}
	}

	if (!gc->hook_exit) {
		gc->hook_exit = FUNC1(gc, EVENT_HOOK_EXIT);
		if (!gc->hook_exit) {
			FUNC2("init_events: failed to get hook_exit event: %lu",
			     FUNC0());
			return false;
		}
	}

	return true;
}