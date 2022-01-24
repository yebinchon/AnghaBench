#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ and_analyze; scalar_t__ verbose; scalar_t__ freeze; scalar_t__ full; scalar_t__ skip_locked; scalar_t__ disable_page_skipping; scalar_t__ analyze_only; } ;
typedef  TYPE_1__ vacuumingOptions ;
typedef  int /*<<< orphan*/  PQExpBuffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(PQExpBuffer sql, int serverVersion,
					   vacuumingOptions *vacopts, const char *table)
{
	const char *paren = " (";
	const char *comma = ", ";
	const char *sep = paren;

	FUNC4(sql);

	if (vacopts->analyze_only)
	{
		FUNC3(sql, "ANALYZE");

		/* parenthesized grammar of ANALYZE is supported since v11 */
		if (serverVersion >= 110000)
		{
			if (vacopts->skip_locked)
			{
				/* SKIP_LOCKED is supported since v12 */
				FUNC0(serverVersion >= 120000);
				FUNC1(sql, "%sSKIP_LOCKED", sep);
				sep = comma;
			}
			if (vacopts->verbose)
			{
				FUNC1(sql, "%sVERBOSE", sep);
				sep = comma;
			}
			if (sep != paren)
				FUNC2(sql, ')');
		}
		else
		{
			if (vacopts->verbose)
				FUNC3(sql, " VERBOSE");
		}
	}
	else
	{
		FUNC3(sql, "VACUUM");

		/* parenthesized grammar of VACUUM is supported since v9.0 */
		if (serverVersion >= 90000)
		{
			if (vacopts->disable_page_skipping)
			{
				/* DISABLE_PAGE_SKIPPING is supported since v9.6 */
				FUNC0(serverVersion >= 90600);
				FUNC1(sql, "%sDISABLE_PAGE_SKIPPING", sep);
				sep = comma;
			}
			if (vacopts->skip_locked)
			{
				/* SKIP_LOCKED is supported since v12 */
				FUNC0(serverVersion >= 120000);
				FUNC1(sql, "%sSKIP_LOCKED", sep);
				sep = comma;
			}
			if (vacopts->full)
			{
				FUNC1(sql, "%sFULL", sep);
				sep = comma;
			}
			if (vacopts->freeze)
			{
				FUNC1(sql, "%sFREEZE", sep);
				sep = comma;
			}
			if (vacopts->verbose)
			{
				FUNC1(sql, "%sVERBOSE", sep);
				sep = comma;
			}
			if (vacopts->and_analyze)
			{
				FUNC1(sql, "%sANALYZE", sep);
				sep = comma;
			}
			if (sep != paren)
				FUNC2(sql, ')');
		}
		else
		{
			if (vacopts->full)
				FUNC3(sql, " FULL");
			if (vacopts->freeze)
				FUNC3(sql, " FREEZE");
			if (vacopts->verbose)
				FUNC3(sql, " VERBOSE");
			if (vacopts->and_analyze)
				FUNC3(sql, " ANALYZE");
		}
	}

	FUNC1(sql, " %s;", table);
}