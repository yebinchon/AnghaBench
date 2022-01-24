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
 int /*<<< orphan*/  SEEK_END ; 
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char*,char const*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 long FUNC5 (int /*<<< orphan*/ *) ; 
 char* progname ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static long
FUNC7(const char *file)
{
	long		r;
	FILE	   *f = FUNC2(file, "r");

	if (!f)
	{
		FUNC3(stderr, FUNC0("%s: could not open file \"%s\" for reading: %s\n"),
				progname, file, FUNC6(errno));
		return -1;
	}
	FUNC4(f, 0, SEEK_END);
	r = FUNC5(f);
	FUNC1(f);
	return r;
}