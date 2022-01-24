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
struct perf_event_attr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct perf_event_attr*,unsigned int,unsigned long) ; 
 int FUNC1 (struct perf_event_attr*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

int FUNC3(unsigned int type,
			    unsigned long config, int group_fd)
{
	int fd;
	struct perf_event_attr event_attr;

	FUNC0(&event_attr, type, config);

	fd = FUNC1(&event_attr, 0, -1, group_fd, 0);

	if (fd < 0)
		FUNC2("perf_event_open() failed");

	return fd;
}