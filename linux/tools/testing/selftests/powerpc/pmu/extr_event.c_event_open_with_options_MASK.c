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
struct event {int fd; int /*<<< orphan*/  attr; } ;
typedef  int /*<<< orphan*/  pid_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

int FUNC2(struct event *e, pid_t pid, int cpu, int group_fd)
{
	e->fd = FUNC0(&e->attr, pid, cpu, group_fd, 0);
	if (e->fd == -1) {
		FUNC1("perf_event_open");
		return -1;
	}

	return 0;
}