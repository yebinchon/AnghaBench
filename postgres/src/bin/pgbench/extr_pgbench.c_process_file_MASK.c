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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char const*,int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,char const*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 char* FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/ * stdin ; 
 scalar_t__ FUNC8 (char const*,char*) ; 
 char* FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC10(const char *filename, int weight)
{
	FILE	   *fd;
	char	   *buf;

	/* Slurp the file contents into "buf" */
	if (FUNC8(filename, "-") == 0)
		fd = stdin;
	else if ((fd = FUNC4(filename, "r")) == NULL)
	{
		FUNC5(stderr, "could not open file \"%s\": %s\n",
				filename, FUNC9(errno));
		FUNC1(1);
	}

	buf = FUNC7(fd);

	if (FUNC3(fd))
	{
		FUNC5(stderr, "could not read file \"%s\": %s\n",
				filename, FUNC9(errno));
		FUNC1(1);
	}

	if (fd != stdin)
		FUNC2(fd);

	FUNC0(buf, filename, weight);

	FUNC6(buf);
}