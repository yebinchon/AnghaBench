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
typedef  int /*<<< orphan*/  PsqlScanState ;

/* Variables and functions */
 int /*<<< orphan*/  OT_SQLIDHACK ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC2 (char*,char*) ; 

__attribute__((used)) static char *
FUNC3(PsqlScanState scan_state)
{
	char	   *result;
	char		quote;

	/*
	 * Ideally we should treat the arguments as SQL identifiers.  But for
	 * backwards compatibility with 7.2 and older pg_dump files, we have to
	 * take unquoted arguments verbatim (don't downcase them). For now,
	 * double-quoted arguments may be stripped of double quotes (as if SQL
	 * identifiers).  By 7.4 or so, pg_dump files can be expected to
	 * double-quote all mixed-case \connect arguments, and then we can get rid
	 * of OT_SQLIDHACK.
	 */
	result = FUNC1(scan_state, OT_SQLIDHACK, &quote, true);

	if (!result)
		return NULL;

	if (quote)
		return result;

	if (*result == '\0' || FUNC2(result, "-") == 0)
	{
		FUNC0(result);
		return NULL;
	}

	return result;
}