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
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 
 scalar_t__ FUNC3 (char const*,int) ; 
 scalar_t__ FUNC4 (char const*) ; 

int
FUNC5(const char *fname, int elevel)
{
	if (FUNC4(fname) < 0)
	{
		FUNC0(elevel,
				(FUNC1(),
				 FUNC2("could not remove file \"%s\": %m",
						fname)));
		return -1;
	}

	/*
	 * To guarantee that the removal of the file is persistent, fsync its
	 * parent directory.
	 */
	if (FUNC3(fname, elevel) != 0)
		return -1;

	return 0;
}