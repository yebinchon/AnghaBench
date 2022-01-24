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
struct TYPE_2__ {scalar_t__ mode; } ;
struct game_capture {scalar_t__ process_id; int error_acquiring; int active; int /*<<< orphan*/  thread_id; scalar_t__ next_window; TYPE_1__ config; } ;

/* Variables and functions */
 scalar_t__ CAPTURE_MODE_ANY ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (struct game_capture*) ; 
 int /*<<< orphan*/  FUNC4 (struct game_capture*) ; 
 int /*<<< orphan*/  FUNC5 (struct game_capture*) ; 
 int /*<<< orphan*/  FUNC6 (struct game_capture*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct game_capture *gc)
{
	if (gc->config.mode == CAPTURE_MODE_ANY) {
		FUNC3(gc);
	} else {
		FUNC4(gc);
	}

	if (gc->next_window) {
		gc->thread_id = FUNC2(gc->next_window,
							 &gc->process_id);

		// Make sure we never try to hook ourselves (projector)
		if (gc->process_id == FUNC0())
			return;

		if (!gc->thread_id && gc->process_id)
			return;
		if (!gc->process_id) {
			FUNC7("error acquiring, failed to get window "
			     "thread/process ids: %lu",
			     FUNC1());
			gc->error_acquiring = true;
			return;
		}

		if (!FUNC5(gc)) {
			FUNC6(gc);
		}
	} else {
		gc->active = false;
	}
}