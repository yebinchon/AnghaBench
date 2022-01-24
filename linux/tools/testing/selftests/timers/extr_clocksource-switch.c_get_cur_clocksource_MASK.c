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
 int /*<<< orphan*/  O_RDONLY ; 
 int FUNC0 (char*,int /*<<< orphan*/ ) ; 
 size_t FUNC1 (int,char*,size_t) ; 

int FUNC2(char *buf, size_t size)
{
	int fd;

	fd = FUNC0("/sys/devices/system/clocksource/clocksource0/current_clocksource", O_RDONLY);

	size = FUNC1(fd, buf, size);

	return 0;
}