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
struct ffmpeg_output {int write_thread_active; int active; int /*<<< orphan*/  output; int /*<<< orphan*/  write_thread; int /*<<< orphan*/  stop_event; int /*<<< orphan*/  write_sem; } ;

/* Variables and functions */
 int ENOSPC ; 
 int OBS_OUTPUT_ERROR ; 
 int OBS_OUTPUT_NO_SPACE ; 
 int /*<<< orphan*/  FUNC0 (struct ffmpeg_output*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct ffmpeg_output*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void *FUNC6(void *data)
{
	struct ffmpeg_output *output = data;

	while (FUNC3(output->write_sem) == 0) {
		/* check to see if shutting down */
		if (FUNC2(output->stop_event) == 0)
			break;

		int ret = FUNC4(output);
		if (ret != 0) {
			int code = OBS_OUTPUT_ERROR;

			FUNC5(output->write_thread);
			output->write_thread_active = false;

			if (ret == -ENOSPC)
				code = OBS_OUTPUT_NO_SPACE;

			FUNC1(output->output, code);
			FUNC0(output);
			break;
		}
	}

	output->active = false;
	return NULL;
}