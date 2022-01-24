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
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  stderr ; 

void
FUNC2(const char *source, int lineno,
			 const char *line, const char *command,
			 const char *msg, const char *more, int column)
{
	FUNC1(stderr, "%s:%d: %s", source, lineno, msg);
	if (more != NULL)
		FUNC1(stderr, " (%s)", more);
	if (column >= 0 && line == NULL)
		FUNC1(stderr, " at column %d", column + 1);
	if (command != NULL)
		FUNC1(stderr, " in command \"%s\"", command);
	FUNC1(stderr, "\n");
	if (line != NULL)
	{
		FUNC1(stderr, "%s\n", line);
		if (column >= 0)
		{
			int			i;

			for (i = 0; i < column; i++)
				FUNC1(stderr, " ");
			FUNC1(stderr, "^ error found here\n");
		}
	}
	FUNC0(1);
}