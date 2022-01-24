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
typedef  size_t ssize_t ;
typedef  int pid_t ;
typedef  int /*<<< orphan*/  buf2 ;
typedef  int /*<<< orphan*/  buf1 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 size_t FUNC1 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,int) ; 
 int FUNC3 (char*,char*) ; 
 size_t FUNC4 (char*) ; 
 int FUNC5 () ; 

int FUNC6(void)
{
	char buf1[64], buf2[64];
	pid_t pid;
	ssize_t rv;

	pid = FUNC5();
	FUNC2(buf1, sizeof(buf1), "%u", pid);

	rv = FUNC1("/proc/self", buf2, sizeof(buf2));
	FUNC0(rv == FUNC4(buf1));
	buf2[rv] = '\0';
	FUNC0(FUNC3(buf1, buf2));

	return 0;
}