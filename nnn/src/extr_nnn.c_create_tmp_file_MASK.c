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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 size_t STR_TMPFILE ; 
 scalar_t__ TMP_LEN_MAX ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ g_tmpfpath ; 
 scalar_t__ g_tmpfplen ; 
 int /*<<< orphan*/ * messages ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC4(void)
{
	FUNC3(g_tmpfpath + g_tmpfplen - 1, messages[STR_TMPFILE], TMP_LEN_MAX - g_tmpfplen);

	int fd = FUNC1(g_tmpfpath);

	if (fd == -1) {
		FUNC0(FUNC2(errno));
	}

	return fd;
}