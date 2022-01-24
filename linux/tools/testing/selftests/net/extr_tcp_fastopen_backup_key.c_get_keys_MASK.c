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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int socklen_t ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int KEY_LENGTH ; 
 char* PROC_FASTOPEN_KEY ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  SOL_TCP ; 
 int /*<<< orphan*/  TCP_FASTOPEN_KEY ; 
 scalar_t__ do_sockopt ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  proc_fd ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC4 (char*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(int fd, uint32_t *keys)
{
	char buf[128];
	socklen_t len = KEY_LENGTH * 2;

	if (do_sockopt) {
		if (FUNC1(fd, SOL_TCP, TCP_FASTOPEN_KEY, keys, &len))
			FUNC0(1, errno, "Unable to get key");
		return;
	}
	FUNC2(proc_fd, 0, SEEK_SET);
	if (FUNC3(proc_fd, buf, sizeof(buf)) <= 0)
		FUNC0(1, errno, "Unable to read %s", PROC_FASTOPEN_KEY);
	if (FUNC4(buf, "%x-%x-%x-%x,%x-%x-%x-%x", keys, keys + 1, keys + 2,
	    keys + 3, keys + 4, keys + 5, keys + 6, keys + 7) != 8)
		FUNC0(1, 0, "Unable to parse %s", PROC_FASTOPEN_KEY);
}