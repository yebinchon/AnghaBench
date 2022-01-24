#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int nargs; char* nulls; int /*<<< orphan*/ * types; int /*<<< orphan*/ * values; } ;
struct TYPE_8__ {char* data; } ;
typedef  TYPE_1__ StringInfoData ;
typedef  TYPE_2__ PreparedParamsData ;
typedef  int /*<<< orphan*/  PLpgSQL_execstate ;
typedef  int /*<<< orphan*/  MemoryContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*) ; 
 char* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 

__attribute__((used)) static char *
FUNC7(PLpgSQL_execstate *estate,
						  const PreparedParamsData *ppd)
{
	int			paramno;
	StringInfoData paramstr;
	MemoryContext oldcontext;

	if (!ppd)
		return NULL;

	oldcontext = FUNC0(FUNC5(estate));

	FUNC6(&paramstr);
	for (paramno = 0; paramno < ppd->nargs; paramno++)
	{
		FUNC1(&paramstr, "%s$%d = ",
						 paramno > 0 ? ", " : "",
						 paramno + 1);

		if (ppd->nulls[paramno] == 'n')
			FUNC3(&paramstr, "NULL");
		else
		{
			char	   *value = FUNC4(estate, ppd->values[paramno], ppd->types[paramno]);
			char	   *p;

			FUNC2(&paramstr, '\'');
			for (p = value; *p; p++)
			{
				if (*p == '\'') /* double single quotes */
					FUNC2(&paramstr, *p);
				FUNC2(&paramstr, *p);
			}
			FUNC2(&paramstr, '\'');
		}
	}

	FUNC0(oldcontext);

	return paramstr.data;
}