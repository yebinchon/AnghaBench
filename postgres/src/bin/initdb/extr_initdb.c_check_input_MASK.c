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
struct stat {int /*<<< orphan*/  st_mode; } ;

/* Variables and functions */
 scalar_t__ ENOENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 char* FUNC1 (char*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 scalar_t__ FUNC5 (char*,struct stat*) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void
FUNC6(char *path)
{
	struct stat statbuf;

	if (FUNC5(path, &statbuf) != 0)
	{
		if (errno == ENOENT)
		{
			FUNC4("file \"%s\" does not exist", path);
			FUNC3(stderr,
					"%s", FUNC1("This might mean you have a corrupted installation or identified\n"
					  "the wrong directory with the invocation option -L.\n"));
		}
		else
		{
			FUNC4("could not access file \"%s\": %m", path);
			FUNC3(stderr,
					"%s", FUNC1("This might mean you have a corrupted installation or identified\n"
					  "the wrong directory with the invocation option -L.\n"));
		}
		FUNC2(1);
	}
	if (!FUNC0(statbuf.st_mode))
	{
		FUNC4("file \"%s\" is not a regular file", path);
		FUNC3(stderr,
				"%s", FUNC1("This might mean you have a corrupted installation or identified\n"
				  "the wrong directory with the invocation option -L.\n"));
		FUNC2(1);
	}
}