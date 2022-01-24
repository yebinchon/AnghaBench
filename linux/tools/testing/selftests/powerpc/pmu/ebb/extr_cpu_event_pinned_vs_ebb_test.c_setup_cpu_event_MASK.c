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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct event*) ; 
 int /*<<< orphan*/  FUNC3 (struct event*,int,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct event*,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static int FUNC6(struct event *event, int cpu)
{
	FUNC3(event, 0x400FA, "PM_RUN_INST_CMPL");

	event->attr.pinned = 1;

	event->attr.exclude_kernel = 1;
	event->attr.exclude_hv = 1;
	event->attr.exclude_idle = 1;

	FUNC1(FUNC5(1));
	FUNC0(FUNC4(event, cpu));
	FUNC0(FUNC2(event));

	return 0;
}