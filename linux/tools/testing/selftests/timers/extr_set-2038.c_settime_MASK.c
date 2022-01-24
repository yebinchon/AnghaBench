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
typedef  scalar_t__ time_t ;
struct timeval {scalar_t__ tv_usec; scalar_t__ tv_sec; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,long,int) ; 
 int FUNC1 (struct timeval*,int /*<<< orphan*/ *) ; 

int FUNC2(long long time)
{
	struct timeval now;
	int ret;

	now.tv_sec = (time_t)time;
	now.tv_usec  = 0;

	ret = FUNC1(&now, NULL);

	FUNC0("Setting time to 0x%lx: %d\n", (long)time, ret);
	return ret;
}