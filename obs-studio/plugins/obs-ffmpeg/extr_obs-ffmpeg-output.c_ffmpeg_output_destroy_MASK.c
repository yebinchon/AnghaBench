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
struct ffmpeg_output {int /*<<< orphan*/  stop_event; int /*<<< orphan*/  write_sem; int /*<<< orphan*/  write_mutex; int /*<<< orphan*/  start_thread; scalar_t__ connecting; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (struct ffmpeg_output*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(void *data)
{
	struct ffmpeg_output *output = data;

	if (output) {
		if (output->connecting)
			FUNC4(output->start_thread, NULL);

		FUNC1(output);

		FUNC5(&output->write_mutex);
		FUNC3(output->write_sem);
		FUNC2(output->stop_event);
		FUNC0(data);
	}
}