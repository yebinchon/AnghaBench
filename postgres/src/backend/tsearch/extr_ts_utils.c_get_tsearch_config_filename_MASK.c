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
 int /*<<< orphan*/  ERRCODE_INVALID_PARAMETER_VALUE ; 
 int /*<<< orphan*/  ERROR ; 
 int MAXPGPATH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  my_exec_path ; 
 char* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*,char*,char const*,char const*) ; 
 scalar_t__ FUNC6 (char const*) ; 
 scalar_t__ FUNC7 (char const*,char*) ; 

char *
FUNC8(const char *basename,
							const char *extension)
{
	char		sharepath[MAXPGPATH];
	char	   *result;

	/*
	 * We limit the basename to contain a-z, 0-9, and underscores.  This may
	 * be overly restrictive, but we don't want to allow access to anything
	 * outside the tsearch_data directory, so for instance '/' *must* be
	 * rejected, and on some platforms '\' and ':' are risky as well. Allowing
	 * uppercase might result in incompatible behavior between case-sensitive
	 * and case-insensitive filesystems, and non-ASCII characters create other
	 * interesting risks, so on the whole a tight policy seems best.
	 */
	if (FUNC7(basename, "abcdefghijklmnopqrstuvwxyz0123456789_") != FUNC6(basename))
		FUNC0(ERROR,
				(FUNC1(ERRCODE_INVALID_PARAMETER_VALUE),
				 FUNC2("invalid text search configuration file name \"%s\"",
						basename)));

	FUNC3(my_exec_path, sharepath);
	result = FUNC4(MAXPGPATH);
	FUNC5(result, MAXPGPATH, "%s/tsearch_data/%s.%s",
			 sharepath, basename, extension);

	return result;
}