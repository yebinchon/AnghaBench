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
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 size_t FUNC2 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,int,int) ; 
 int FUNC4 (char*,char*) ; 
 size_t FUNC5 (char*) ; 
 int FUNC6 () ; 
 int FUNC7 () ; 

int FUNC8(void *arg)
{
	char buf1[64], buf2[64];
	pid_t pid, tid;
	ssize_t rv;

	pid = FUNC6();
	tid = FUNC7();
	FUNC3(buf1, sizeof(buf1), "%u/task/%u", pid, tid);

	rv = FUNC2("/proc/thread-self", buf2, sizeof(buf2));
	FUNC0(rv == FUNC5(buf1));
	buf2[rv] = '\0';
	FUNC0(FUNC4(buf1, buf2));

	if (arg)
		FUNC1(0);
	return 0;
}