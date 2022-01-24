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
 int /*<<< orphan*/  FUNC2 (char*,char const*,char const*) ; 
 scalar_t__ FUNC3 (char const*,int,int,int) ; 
 scalar_t__ FUNC4 (char const*,int) ; 
 scalar_t__ FUNC5 (char const*,char const*) ; 
 scalar_t__ FUNC6 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC7 (char const*) ; 

int
FUNC8(const char *oldfile, const char *newfile, int elevel)
{
	/*
	 * Ensure that, if we crash directly after the rename/link, a file with
	 * valid contents is moved into place.
	 */
	if (FUNC3(oldfile, false, false, elevel) != 0)
		return -1;

#ifdef HAVE_WORKING_LINK
	if (link(oldfile, newfile) < 0)
	{
		ereport(elevel,
				(errcode_for_file_access(),
				 errmsg("could not link file \"%s\" to \"%s\": %m",
						oldfile, newfile)));
		return -1;
	}
	unlink(oldfile);
#else
	/* XXX: Add racy file existence check? */
	if (FUNC6(oldfile, newfile) < 0)
	{
		FUNC0(elevel,
				(FUNC1(),
				 FUNC2("could not rename file \"%s\" to \"%s\": %m",
						oldfile, newfile)));
		return -1;
	}
#endif

	/*
	 * Make change persistent in case of an OS crash, both the new entry and
	 * its parent directory need to be flushed.
	 */
	if (FUNC3(newfile, false, false, elevel) != 0)
		return -1;

	/* Same for parent directory */
	if (FUNC4(newfile, elevel) != 0)
		return -1;

	return 0;
}