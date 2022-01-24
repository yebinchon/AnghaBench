#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  vars; int /*<<< orphan*/  gset_prefix; } ;
typedef  int /*<<< orphan*/  PGresult ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int) ; 
 char* FUNC2 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/  const*) ; 
 int FUNC4 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 TYPE_1__ pset ; 
 char* FUNC8 (char*,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static bool
FUNC9(const PGresult *result)
{
	bool		success = true;

	if (FUNC4(result) < 1)
	{
		FUNC7("no rows returned for \\gset");
		success = false;
	}
	else if (FUNC4(result) > 1)
	{
		FUNC7("more than one row returned for \\gset");
		success = false;
	}
	else
	{
		int			i;

		for (i = 0; i < FUNC3(result); i++)
		{
			char	   *colname = FUNC0(result, i);
			char	   *varname;
			char	   *value;

			/* concatenate prefix and column name */
			varname = FUNC8("%s%s", pset.gset_prefix, colname);

			if (!FUNC1(result, 0, i))
				value = FUNC2(result, 0, i);
			else
			{
				/* for NULL value, unset rather than set the variable */
				value = NULL;
			}

			if (!FUNC5(pset.vars, varname, value))
			{
				FUNC6(varname);
				success = false;
				break;
			}

			FUNC6(varname);
		}
	}

	return success;
}