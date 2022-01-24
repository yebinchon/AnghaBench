#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {char* data; } ;
typedef  TYPE_1__ StringInfoData ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  Anum_pg_class_reloptions ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RELOID ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  TEXTOID ; 
 char* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,char,int /*<<< orphan*/ **,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 char* FUNC13 (char*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*,char*) ; 
 char* FUNC15 (char*,char) ; 

__attribute__((used)) static char *
FUNC16(Oid relid)
{
	char	   *result = NULL;
	HeapTuple	tuple;
	Datum		reloptions;
	bool		isnull;

	tuple = FUNC4(RELOID, FUNC2(relid));
	if (!FUNC1(tuple))
		FUNC10(ERROR, "cache lookup failed for relation %u", relid);

	reloptions = FUNC5(RELOID, tuple,
								 Anum_pg_class_reloptions, &isnull);
	if (!isnull)
	{
		StringInfoData buf;
		Datum	   *options;
		int			noptions;
		int			i;

		FUNC11(&buf);

		FUNC9(FUNC0(reloptions),
						  TEXTOID, -1, false, 'i',
						  &options, NULL, &noptions);

		for (i = 0; i < noptions; i++)
		{
			char	   *option = FUNC6(options[i]);
			char	   *name;
			char	   *separator;
			char	   *value;

			/*
			 * Each array element should have the form name=value.  If the "="
			 * is missing for some reason, treat it like an empty value.
			 */
			name = option;
			separator = FUNC15(option, '=');
			if (separator)
			{
				*separator = '\0';
				value = separator + 1;
			}
			else
				value = "";

			if (i > 0)
				FUNC8(&buf, ", ");
			FUNC7(&buf, "%s=", FUNC13(name));

			/*
			 * In general we need to quote the value; but to avoid unnecessary
			 * clutter, do not quote if it is an identifier that would not
			 * need quoting.  (We could also allow numbers, but that is a bit
			 * trickier than it looks --- for example, are leading zeroes
			 * significant?  We don't want to assume very much here about what
			 * custom reloptions might mean.)
			 */
			if (FUNC13(value) == value)
				FUNC8(&buf, value);
			else
				FUNC14(&buf, value);

			FUNC12(option);
		}

		result = buf.data;
	}

	FUNC3(tuple);

	return result;
}