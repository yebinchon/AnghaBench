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
struct TYPE_2__ {scalar_t__ mode; scalar_t__ cursor; int /*<<< orphan*/  hook_rate; } ;
struct game_capture {float retry_time; int activate_hook; int showing; int error_acquiring; float retry_interval; float fps_reset_time; int /*<<< orphan*/  cursor_data; TYPE_1__ config; int /*<<< orphan*/  (* copy_texture ) (struct game_capture*) ;scalar_t__ active; scalar_t__ capturing; scalar_t__ hook_ready; scalar_t__ injector_process; scalar_t__ process_id; scalar_t__ hook_stop; int /*<<< orphan*/  source; int /*<<< orphan*/  priority; int /*<<< orphan*/  class; int /*<<< orphan*/  title; int /*<<< orphan*/  executable; int /*<<< orphan*/  hotkey_window; int /*<<< orphan*/  activate_hook_now; int /*<<< orphan*/  deactivate_hook; } ;
typedef  enum capture_result { ____Placeholder_capture_result } capture_result ;
typedef  int /*<<< orphan*/  HWND ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 scalar_t__ CAPTURE_MODE_ANY ; 
 int CAPTURE_RETRY ; 
 int CAPTURE_SUCCESS ; 
 float ERROR_RETRY_INTERVAL ; 
 int /*<<< orphan*/  EVENT_HOOK_READY ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__*) ; 
 int /*<<< orphan*/  WINDOW_PRIORITY_CLASS ; 
 int /*<<< orphan*/  FUNC1 (struct game_capture*) ; 
 int /*<<< orphan*/  FUNC2 (struct game_capture*,float) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 float FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int FUNC12 (struct game_capture*) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC18 (struct game_capture*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ *) ; 
 int FUNC20 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC21 (struct game_capture*) ; 
 scalar_t__ FUNC22 (struct game_capture*) ; 
 int /*<<< orphan*/  FUNC23 (struct game_capture*) ; 
 int /*<<< orphan*/  FUNC24 (struct game_capture*) ; 
 int /*<<< orphan*/  FUNC25 (struct game_capture*) ; 
 int /*<<< orphan*/  FUNC26 (char*,long) ; 

__attribute__((used)) static void FUNC27(void *data, float seconds)
{
	struct game_capture *gc = data;
	bool deactivate = FUNC20(&gc->deactivate_hook, false);
	bool activate_now = FUNC20(&gc->activate_hook_now, false);

	if (activate_now) {
		HWND hwnd = (HWND)(uintptr_t)FUNC19(
			&gc->hotkey_window);

		if (FUNC13(hwnd))
			hwnd = FUNC6(hwnd);

		if (FUNC8(&gc->executable, hwnd)) {
			FUNC9(&gc->title, hwnd);
			FUNC7(&gc->class, hwnd);

			gc->priority = WINDOW_PRIORITY_CLASS;
			gc->retry_time = 10.0f * FUNC10(
							 gc->config.hook_rate);
			gc->activate_hook = true;
		} else {
			deactivate = false;
			activate_now = false;
		}
	} else if (deactivate) {
		gc->activate_hook = false;
	}

	if (!FUNC17(gc->source)) {
		if (gc->showing) {
			if (gc->active)
				FUNC23(gc);
			gc->showing = false;
		}
		return;

	} else if (!gc->showing) {
		gc->retry_time =
			10.0f * FUNC10(gc->config.hook_rate);
	}

	if (gc->hook_stop && FUNC14(gc->hook_stop)) {
		FUNC5("hook stop signal received");
		FUNC23(gc);
	}
	if (gc->active && deactivate) {
		FUNC23(gc);
	}

	if (gc->active && !gc->hook_ready && gc->process_id) {
		gc->hook_ready = FUNC18(gc, EVENT_HOOK_READY);
	}

	if (gc->injector_process && FUNC14(gc->injector_process)) {
		DWORD exit_code = 0;

		FUNC0(gc->injector_process, &exit_code);
		FUNC3(&gc->injector_process);

		if (exit_code != 0) {
			FUNC26("inject process failed: %ld", (long)exit_code);
			gc->error_acquiring = true;

		} else if (!gc->capturing) {
			gc->retry_interval =
				ERROR_RETRY_INTERVAL *
				FUNC10(gc->config.hook_rate);
			FUNC23(gc);
		}
	}

	if (gc->hook_ready && FUNC14(gc->hook_ready)) {
		FUNC5("capture initializing!");
		enum capture_result result = FUNC12(gc);

		if (result == CAPTURE_SUCCESS)
			gc->capturing = FUNC22(gc);
		else
			FUNC5("init_capture_data failed");

		if (result != CAPTURE_RETRY && !gc->capturing) {
			gc->retry_interval =
				ERROR_RETRY_INTERVAL *
				FUNC10(gc->config.hook_rate);
			FUNC23(gc);
		}
	}

	gc->retry_time += seconds;

	if (!gc->active) {
		if (!gc->error_acquiring &&
		    gc->retry_time > gc->retry_interval) {
			if (gc->config.mode == CAPTURE_MODE_ANY ||
			    gc->activate_hook) {
				FUNC25(gc);
				gc->retry_time = 0.0f;
			}
		}
	} else {
		if (!FUNC1(gc)) {
			FUNC11("capture window no longer exists, "
			     "terminating capture");
			FUNC23(gc);
		} else {
			if (gc->copy_texture) {
				FUNC15();
				gc->copy_texture(gc);
				FUNC16();
			}

			if (gc->config.cursor) {
				FUNC2(gc, seconds);
				FUNC15();
				FUNC4(&gc->cursor_data);
				FUNC16();
			}

			gc->fps_reset_time += seconds;
			if (gc->fps_reset_time >= gc->retry_interval) {
				FUNC21(gc);
				gc->fps_reset_time = 0.0f;
			}
		}
	}

	if (!gc->showing)
		gc->showing = true;
}