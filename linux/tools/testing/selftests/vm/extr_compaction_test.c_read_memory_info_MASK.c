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
typedef  int /*<<< orphan*/  buffer ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 unsigned long FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/ * FUNC4 (char*,char*) ; 

int FUNC5(unsigned long *memfree, unsigned long *hugepagesize)
{
	char  buffer[256] = {0};
	char *cmd = "cat /proc/meminfo | grep -i memfree | grep -o '[0-9]*'";
	FILE *cmdfile = FUNC4(cmd, "r");

	if (!(FUNC1(buffer, sizeof(buffer), cmdfile))) {
		FUNC3("Failed to read meminfo\n");
		return -1;
	}

	FUNC2(cmdfile);

	*memfree = FUNC0(buffer);
	cmd = "cat /proc/meminfo | grep -i hugepagesize | grep -o '[0-9]*'";
	cmdfile = FUNC4(cmd, "r");

	if (!(FUNC1(buffer, sizeof(buffer), cmdfile))) {
		FUNC3("Failed to read meminfo\n");
		return -1;
	}

	FUNC2(cmdfile);
	*hugepagesize = FUNC0(buffer);

	return 0;
}