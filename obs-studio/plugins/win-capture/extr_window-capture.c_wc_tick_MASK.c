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
struct TYPE_7__ {int cursor_hidden; scalar_t__ valid; } ;
struct TYPE_6__ {scalar_t__ bottom; scalar_t__ right; } ;
struct window_capture {float check_window_timer; float cursor_check_time; float resize_timer; scalar_t__ window; TYPE_2__ capture; int /*<<< orphan*/  compatibility; int /*<<< orphan*/  cursor; TYPE_1__ last_rect; int /*<<< orphan*/  executable; int /*<<< orphan*/  title; int /*<<< orphan*/  class; int /*<<< orphan*/  priority; int /*<<< orphan*/  source; } ;
typedef  TYPE_1__ RECT ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 float CURSOR_CHECK_TIME ; 
 int /*<<< orphan*/  EXCLUDE_MINIMIZED ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,TYPE_1__*) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__*) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 float RESIZE_CHECK_TIME ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC12(void *data, float seconds)
{
	struct window_capture *wc = data;
	RECT rect;
	bool reset_capture = false;

	if (!FUNC11(wc->source))
		return;

	if (!wc->window || !FUNC4(wc->window)) {
		if (!wc->title && !wc->class)
			return;

		wc->check_window_timer += seconds;

		if (wc->check_window_timer < 1.0f) {
			if (wc->capture.valid)
				FUNC6(&wc->capture);
			return;
		}

		wc->check_window_timer = 0.0f;

		wc->window = FUNC8(EXCLUDE_MINIMIZED, wc->priority,
					 wc->class, wc->title, wc->executable);
		if (!wc->window) {
			if (wc->capture.valid)
				FUNC6(&wc->capture);
			return;
		}

		reset_capture = true;

	} else if (FUNC3(wc->window)) {
		return;
	}

	wc->cursor_check_time += seconds;
	if (wc->cursor_check_time > CURSOR_CHECK_TIME) {
		DWORD foreground_pid, target_pid;

		// Can't just compare the window handle in case of app with child windows
		if (!FUNC2(FUNC1(),
					      &foreground_pid))
			foreground_pid = 0;

		if (!FUNC2(wc->window, &target_pid))
			target_pid = 0;

		if (foreground_pid && target_pid &&
		    foreground_pid != target_pid)
			wc->capture.cursor_hidden = true;
		else
			wc->capture.cursor_hidden = false;

		wc->cursor_check_time = 0.0f;
	}

	FUNC9();

	FUNC0(wc->window, &rect);

	if (!reset_capture) {
		wc->resize_timer += seconds;

		if (wc->resize_timer >= RESIZE_CHECK_TIME) {
			if (rect.bottom != wc->last_rect.bottom ||
			    rect.right != wc->last_rect.right)
				reset_capture = true;

			wc->resize_timer = 0.0f;
		}
	}

	if (reset_capture) {
		wc->resize_timer = 0.0f;
		wc->last_rect = rect;
		FUNC6(&wc->capture);
		FUNC7(&wc->capture, 0, 0, rect.right, rect.bottom,
				wc->cursor, wc->compatibility);
	}

	FUNC5(&wc->capture, wc->window);
	FUNC10();
}