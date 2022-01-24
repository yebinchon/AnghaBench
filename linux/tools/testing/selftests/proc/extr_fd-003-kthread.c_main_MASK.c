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
 int FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

int FUNC3(void)
{
	unsigned int pid;
	int fd;

	/*
	 * In theory this will loop indefinitely if kernel threads are exiled
	 * from /proc.
	 *
	 * Start with kthreadd.
	 */
	pid = 2;
	while ((fd = FUNC0(pid)) == -1 && pid < 1024) {
		pid++;
	}
	/* EACCES if run as non-root. */
	if (pid >= 1024)
		return 1;

	FUNC2(fd);
	FUNC1(fd);

	return 0;
}