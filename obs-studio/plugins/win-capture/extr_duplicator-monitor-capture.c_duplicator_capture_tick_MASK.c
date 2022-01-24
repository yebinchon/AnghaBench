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
struct duplicator_capture {int showing; float reset_timeout; scalar_t__ width; scalar_t__ duplicator; int /*<<< orphan*/  cursor_data; scalar_t__ capture_cursor; int /*<<< orphan*/  monitor; int /*<<< orphan*/  source; } ;

/* Variables and functions */
 float RESET_INTERVAL_SEC ; 
 int /*<<< orphan*/  FUNC0 (float) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct duplicator_capture*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct duplicator_capture*) ; 

__attribute__((used)) static void FUNC9(void *data, float seconds)
{
	struct duplicator_capture *capture = data;

	/* completely shut down monitor capture if not in use, otherwise it can
	 * sometimes generate system lag when a game is in fullscreen mode */
	if (!FUNC7(capture->source)) {
		if (capture->showing) {
			FUNC5();
			FUNC2(capture);
			FUNC6();

			capture->showing = false;
		}
		return;

		/* always try to load the capture immediately when the source is first
	 * shown */
	} else if (!capture->showing) {
		capture->reset_timeout = RESET_INTERVAL_SEC;
	}

	FUNC5();

	if (!capture->duplicator) {
		capture->reset_timeout += seconds;

		if (capture->reset_timeout >= RESET_INTERVAL_SEC) {
			capture->duplicator =
				FUNC3(capture->monitor);

			capture->reset_timeout = 0.0f;
		}
	}

	if (!!capture->duplicator) {
		if (capture->capture_cursor)
			FUNC1(&capture->cursor_data);

		if (!FUNC4(capture->duplicator)) {
			FUNC2(capture);

		} else if (capture->width == 0) {
			FUNC8(capture);
		}
	}

	FUNC6();

	if (!capture->showing)
		capture->showing = true;

	FUNC0(seconds);
}