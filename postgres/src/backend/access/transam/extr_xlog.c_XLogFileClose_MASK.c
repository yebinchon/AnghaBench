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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  PANIC ; 
 int /*<<< orphan*/  POSIX_FADV_DONTNEED ; 
 int /*<<< orphan*/  ThisTimeLineID ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int openLogFile ; 
 int /*<<< orphan*/  openLogSegNo ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8(void)
{
	FUNC0(openLogFile >= 0);

	/*
	 * WAL segment files will not be re-read in normal operation, so we advise
	 * the OS to release any cached pages.  But do not do so if WAL archiving
	 * or streaming is active, because archiver and walsender process could
	 * use the cache to read the WAL segment.
	 */
#if defined(USE_POSIX_FADVISE) && defined(POSIX_FADV_DONTNEED)
	if (!XLogIsNeeded())
		(void) posix_fadvise(openLogFile, 0, 0, POSIX_FADV_DONTNEED);
#endif

	if (FUNC3(openLogFile) != 0)
		FUNC4(PANIC,
				(FUNC5(),
				 FUNC6("could not close file \"%s\": %m",
						FUNC1(ThisTimeLineID, openLogSegNo))));
	openLogFile = -1;
}