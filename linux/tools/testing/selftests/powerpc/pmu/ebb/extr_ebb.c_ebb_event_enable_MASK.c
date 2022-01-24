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
struct event {int /*<<< orphan*/  fd; } ;

/* Variables and functions */
 int /*<<< orphan*/  PERF_EVENT_IOC_ENABLE ; 
 int FUNC0 (struct event*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 

int FUNC3(struct event *e)
{
	int rc;

	/* Ensure any SPR writes are ordered vs us */
	FUNC2();

	rc = FUNC1(e->fd, PERF_EVENT_IOC_ENABLE);
	if (rc)
		return rc;

	rc = FUNC0(e);

	/* Ditto */
	FUNC2();

	return rc;
}