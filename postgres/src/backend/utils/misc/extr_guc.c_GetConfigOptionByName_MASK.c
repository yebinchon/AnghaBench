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
struct config_generic {int flags; char* name; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEFAULT_ROLE_READ_ALL_SETTINGS ; 
 int /*<<< orphan*/  ERRCODE_INSUFFICIENT_PRIVILEGE ; 
 int /*<<< orphan*/  ERRCODE_UNDEFINED_OBJECT ; 
 int /*<<< orphan*/  ERROR ; 
 int GUC_SUPERUSER_ONLY ; 
 int /*<<< orphan*/  FUNC0 () ; 
 char* FUNC1 (struct config_generic*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*) ; 
 struct config_generic* FUNC5 (char const*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

char *
FUNC7(const char *name, const char **varname, bool missing_ok)
{
	struct config_generic *record;

	record = FUNC5(name, false, ERROR);
	if (record == NULL)
	{
		if (missing_ok)
		{
			if (varname)
				*varname = NULL;
			return NULL;
		}

		FUNC2(ERROR,
				(FUNC3(ERRCODE_UNDEFINED_OBJECT),
				 FUNC4("unrecognized configuration parameter \"%s\"", name)));
	}

	if ((record->flags & GUC_SUPERUSER_ONLY) &&
		!FUNC6(FUNC0(), DEFAULT_ROLE_READ_ALL_SETTINGS))
		FUNC2(ERROR,
				(FUNC3(ERRCODE_INSUFFICIENT_PRIVILEGE),
				 FUNC4("must be superuser or a member of pg_read_all_settings to examine \"%s\"",
						name)));

	if (varname)
		*varname = record->name;

	return FUNC1(record, true);
}