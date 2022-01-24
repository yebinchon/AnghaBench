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
struct obs_output {int reconnect_retry_cur_sec; int reconnect_thread_active; int /*<<< orphan*/  reconnecting; int /*<<< orphan*/  reconnect_thread; int /*<<< orphan*/  reconnect_stop_event; } ;

/* Variables and functions */
 scalar_t__ EAGAIN ; 
 scalar_t__ ETIMEDOUT ; 
 int /*<<< orphan*/  FUNC0 (struct obs_output*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,unsigned long) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void *FUNC5(void *param)
{
	struct obs_output *output = param;
	unsigned long ms = output->reconnect_retry_cur_sec * 1000;

	output->reconnect_thread_active = true;

	if (FUNC2(output->reconnect_stop_event, ms) == ETIMEDOUT)
		FUNC0(output);

	if (FUNC3(output->reconnect_stop_event) == EAGAIN)
		FUNC4(output->reconnect_thread);
	else
		FUNC1(&output->reconnecting, false);

	output->reconnect_thread_active = false;
	return NULL;
}