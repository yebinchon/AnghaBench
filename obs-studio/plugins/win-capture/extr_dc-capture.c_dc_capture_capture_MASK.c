#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int cbSize; } ;
struct dc_capture {int texture_written; int /*<<< orphan*/  cursor_hidden; scalar_t__ cursor_captured; int /*<<< orphan*/  y; int /*<<< orphan*/  x; int /*<<< orphan*/  height; int /*<<< orphan*/  width; TYPE_1__ ci; scalar_t__ capture_cursor; } ;
typedef  int /*<<< orphan*/  HWND ;
typedef  int /*<<< orphan*/  HDC ;
typedef  int /*<<< orphan*/  CURSORINFO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LOG_WARNING ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SRCCOPY ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct dc_capture*) ; 
 int /*<<< orphan*/  FUNC6 (struct dc_capture*) ; 
 int /*<<< orphan*/  FUNC7 (struct dc_capture*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

void FUNC9(struct dc_capture *capture, HWND window)
{
	HDC hdc_target;
	HDC hdc;

	if (capture->capture_cursor) {
		FUNC8(&capture->ci, 0, sizeof(CURSORINFO));
		capture->ci.cbSize = sizeof(CURSORINFO);
		capture->cursor_captured = FUNC1(&capture->ci);
	}

	hdc = FUNC5(capture);
	if (!hdc) {
		FUNC4(LOG_WARNING, "[capture_screen] Failed to get "
				  "texture DC");
		return;
	}

	hdc_target = FUNC2(window);

	FUNC0(hdc, 0, 0, capture->width, capture->height, hdc_target,
	       capture->x, capture->y, SRCCOPY);

	FUNC3(NULL, hdc_target);

	if (capture->cursor_captured && !capture->cursor_hidden)
		FUNC7(capture, hdc, window);

	FUNC6(capture);

	capture->texture_written = true;
}