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
 char* LABEL_FORMAT ; 
 int /*<<< orphan*/  O_RDWR ; 
 int /*<<< orphan*/  START_TIMER ; 
 int /*<<< orphan*/  STOP_TIMER ; 
 scalar_t__ XLOG_BLCKSZ ; 
 int XLOG_BLCKSZ_K ; 
 char* FUNC0 (char*) ; 
 int alarm_triggered ; 
 int /*<<< orphan*/  buf ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  filename ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  stdout ; 
 scalar_t__ FUNC6 (int,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void
FUNC7(void)
{
	int			tmpfile,
				ops;

	/*
	 * Test a simple write without fsync
	 */
	FUNC5(FUNC0("\nNon-sync'ed %dkB writes:\n"), XLOG_BLCKSZ_K);
	FUNC5(LABEL_FORMAT, "write");
	FUNC3(stdout);

	START_TIMER;
	for (ops = 0; alarm_triggered == false; ops++)
	{
		if ((tmpfile = FUNC4(filename, O_RDWR, 0)) == -1)
			FUNC2("could not open output file");
		if (FUNC6(tmpfile, buf, XLOG_BLCKSZ) != XLOG_BLCKSZ)
			FUNC2("write failed");
		FUNC1(tmpfile);
	}
	STOP_TIMER;
}