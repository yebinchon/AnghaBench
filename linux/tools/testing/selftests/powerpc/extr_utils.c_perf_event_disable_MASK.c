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

/* Variables and functions */
 int /*<<< orphan*/  PERF_EVENT_IOC_DISABLE ; 
 int /*<<< orphan*/  PERF_IOC_FLAG_GROUP ; 
 int FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

int FUNC2(int fd)
{
	if (FUNC0(fd, PERF_EVENT_IOC_DISABLE, PERF_IOC_FLAG_GROUP) == -1) {
		FUNC1("error disabling perf events");
		return -1;
	}

	return 0;
}