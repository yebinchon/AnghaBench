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
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  AF_INET6 ; 
 int /*<<< orphan*/  O_RDWR ; 
 char* PROC_FASTOPEN_KEY ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ do_ipv6 ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,char**) ; 
 scalar_t__ proc_fd ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

int FUNC8(int argc, char **argv)
{
	FUNC4(argc, argv);
	proc_fd = FUNC3(PROC_FASTOPEN_KEY, O_RDWR);
	if (proc_fd < 0)
		FUNC1(1, errno, "Unable to open %s", PROC_FASTOPEN_KEY);
	FUNC6(FUNC7(NULL));
	if (do_ipv6)
		FUNC5(AF_INET6);
	else
		FUNC5(AF_INET);
	FUNC0(proc_fd);
	FUNC2(stderr, "PASS\n");
	return 0;
}