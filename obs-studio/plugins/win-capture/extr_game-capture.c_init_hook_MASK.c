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
struct game_capture {int active; scalar_t__ retrying; int /*<<< orphan*/ * next_window; int /*<<< orphan*/ * window; int /*<<< orphan*/  hook_init; TYPE_1__ config; } ;
struct dstr {int /*<<< orphan*/  array; int /*<<< orphan*/  member_0; } ;

/* Variables and functions */
 scalar_t__ CAPTURE_MODE_ANY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct game_capture*) ; 
 int /*<<< orphan*/  FUNC2 (struct dstr*) ; 
 scalar_t__ FUNC3 (struct dstr*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct game_capture*) ; 
 int /*<<< orphan*/  FUNC6 (struct game_capture*) ; 
 int /*<<< orphan*/  FUNC7 (struct game_capture*) ; 
 int /*<<< orphan*/  FUNC8 (struct game_capture*) ; 
 int /*<<< orphan*/  FUNC9 (struct game_capture*) ; 
 int /*<<< orphan*/  FUNC10 (struct game_capture*) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct game_capture*) ; 
 scalar_t__ FUNC13 (struct game_capture*) ; 

__attribute__((used)) static bool FUNC14(struct game_capture *gc)
{
	struct dstr exe = {0};
	bool blacklisted_process = false;

	if (gc->config.mode == CAPTURE_MODE_ANY) {
		if (FUNC3(&exe, gc->next_window)) {
			FUNC4("attempting to hook fullscreen process: %s",
			     exe.array);
		}
	} else {
		if (FUNC3(&exe, gc->next_window)) {
			FUNC4("attempting to hook process: %s", exe.array);
		}
	}

	blacklisted_process = FUNC11(exe.array);
	if (blacklisted_process)
		FUNC4("cannot capture %s due to being blacklisted", exe.array);
	FUNC2(&exe);

	if (blacklisted_process) {
		return false;
	}
	if (FUNC13(gc)) {
		return false;
	}
	if (!FUNC12(gc)) {
		return false;
	}
	if (!FUNC7(gc)) {
		return false;
	}
	if (!FUNC8(gc)) {
		return false;
	}
	if (!FUNC1(gc)) {
		if (!FUNC10(gc)) {
			return false;
		}
	}
	if (!FUNC9(gc)) {
		return false;
	}
	if (!FUNC6(gc)) {
		return false;
	}
	if (!FUNC5(gc)) {
		return false;
	}

	FUNC0(gc->hook_init);

	gc->window = gc->next_window;
	gc->next_window = NULL;
	gc->active = true;
	gc->retrying = 0;
	return true;
}