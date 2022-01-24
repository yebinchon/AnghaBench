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
struct TYPE_2__ {int pinned; int exclude_kernel; int exclude_hv; int exclude_idle; } ;
struct event {TYPE_1__ attr; } ;
typedef  int /*<<< orphan*/  pid_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct event*) ; 
 int /*<<< orphan*/  FUNC2 (struct event*,int,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct event*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct event *event, pid_t child_pid)
{
	FUNC2(event, 0x400FA, "PM_RUN_INST_CMPL");

	event->attr.pinned = 1;

	event->attr.exclude_kernel = 1;
	event->attr.exclude_hv = 1;
	event->attr.exclude_idle = 1;

	FUNC0(FUNC3(event, child_pid));
	FUNC0(FUNC1(event));

	return 0;
}