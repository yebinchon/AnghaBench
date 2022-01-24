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
 int /*<<< orphan*/  PERF_EVENT_IOC_DISABLE ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC1(struct event *e)
{
	return FUNC0(e->fd, PERF_EVENT_IOC_DISABLE);
}