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
typedef  int /*<<< orphan*/  os_event_t ;

/* Variables and functions */
 int /*<<< orphan*/  OS_EVENT_TYPE_AUTO ; 
 int /*<<< orphan*/  clear_queue_signal ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(void)
{
	os_event_t *event;
	if (FUNC2(&event, OS_EVENT_TYPE_AUTO) != 0)
		return;

	FUNC0(clear_queue_signal, event);

	FUNC3(event);
	FUNC1(event);
}