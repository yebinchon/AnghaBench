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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*) ; 
 int /*<<< orphan*/ * FUNC4 (char const*) ; 
 int FUNC5 (char const*) ; 
 scalar_t__ FUNC6 (char const*,char*) ; 

__attribute__((used)) static void
FUNC7(const char *versionname)
{
	int			namelen = FUNC5(versionname);

	/*
	 * Disallow empty names (we could possibly allow this, but there seems
	 * little point).
	 */
	if (namelen == 0)
		FUNC0(ERROR,
				(FUNC1(ERRCODE_INVALID_PARAMETER_VALUE),
				 FUNC3("invalid extension version name: \"%s\"", versionname),
				 FUNC2("Version names must not be empty.")));

	/*
	 * No double dashes, since that would make script filenames ambiguous.
	 */
	if (FUNC6(versionname, "--"))
		FUNC0(ERROR,
				(FUNC1(ERRCODE_INVALID_PARAMETER_VALUE),
				 FUNC3("invalid extension version name: \"%s\"", versionname),
				 FUNC2("Version names must not contain \"--\".")));

	/*
	 * No leading or trailing dash either.
	 */
	if (versionname[0] == '-' || versionname[namelen - 1] == '-')
		FUNC0(ERROR,
				(FUNC1(ERRCODE_INVALID_PARAMETER_VALUE),
				 FUNC3("invalid extension version name: \"%s\"", versionname),
				 FUNC2("Version names must not begin or end with \"-\".")));

	/*
	 * No directory separators either (this is sufficient to prevent ".."
	 * style attacks).
	 */
	if (FUNC4(versionname) != NULL)
		FUNC0(ERROR,
				(FUNC1(ERRCODE_INVALID_PARAMETER_VALUE),
				 FUNC3("invalid extension version name: \"%s\"", versionname),
				 FUNC2("Version names must not contain directory separator characters.")));
}