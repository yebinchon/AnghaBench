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
 int alarmcount ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

int FUNC2(int flags, int interval)
{
	FUNC0(flags, interval);
	FUNC1("count: %19d : ", alarmcount);
	if (alarmcount == 1) {
		FUNC1("[OK]\n");
		return 0;
	}
	FUNC1("[FAILED]\n");
	return -1;
}