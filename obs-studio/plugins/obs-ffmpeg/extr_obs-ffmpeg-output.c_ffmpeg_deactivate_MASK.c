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
struct TYPE_2__ {size_t num; scalar_t__ array; } ;
struct ffmpeg_output {int write_thread_active; int /*<<< orphan*/  ff_data; int /*<<< orphan*/  write_mutex; TYPE_1__ packets; int /*<<< orphan*/  write_thread; int /*<<< orphan*/  write_sem; int /*<<< orphan*/  stop_event; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct ffmpeg_output *output)
{
	if (output->write_thread_active) {
		FUNC3(output->stop_event);
		FUNC4(output->write_sem);
		FUNC5(output->write_thread, NULL);
		output->write_thread_active = false;
	}

	FUNC6(&output->write_mutex);

	for (size_t i = 0; i < output->packets.num; i++)
		FUNC0(output->packets.array + i);
	FUNC1(output->packets);

	FUNC7(&output->write_mutex);

	FUNC2(&output->ff_data);
}