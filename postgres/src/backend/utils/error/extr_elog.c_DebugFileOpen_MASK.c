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
 int /*<<< orphan*/  FATAL ; 
 scalar_t__ IsUnderPostmaster ; 
 int O_APPEND ; 
 int O_CREAT ; 
 int O_WRONLY ; 
 scalar_t__* OutputFileName ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*,char*,int /*<<< orphan*/ ) ; 
 int FUNC5 (int) ; 
 int FUNC6 (scalar_t__*,int,int) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 

void
FUNC7(void)
{
	int			fd,
				istty;

	if (OutputFileName[0])
	{
		/*
		 * A debug-output file name was given.
		 *
		 * Make sure we can write the file, and find out if it's a tty.
		 */
		if ((fd = FUNC6(OutputFileName, O_CREAT | O_APPEND | O_WRONLY,
					   0666)) < 0)
			FUNC1(FATAL,
					(FUNC2(),
					 FUNC3("could not open file \"%s\": %m", OutputFileName)));
		istty = FUNC5(fd);
		FUNC0(fd);

		/*
		 * Redirect our stderr to the debug output file.
		 */
		if (!FUNC4(OutputFileName, "a", stderr))
			FUNC1(FATAL,
					(FUNC2(),
					 FUNC3("could not reopen file \"%s\" as stderr: %m",
							OutputFileName)));

		/*
		 * If the file is a tty and we're running under the postmaster, try to
		 * send stdout there as well (if it isn't a tty then stderr will block
		 * out stdout, so we may as well let stdout go wherever it was going
		 * before).
		 */
		if (istty && IsUnderPostmaster)
			if (!FUNC4(OutputFileName, "a", stdout))
				FUNC1(FATAL,
						(FUNC2(),
						 FUNC3("could not reopen file \"%s\" as stdout: %m",
								OutputFileName)));
	}
}