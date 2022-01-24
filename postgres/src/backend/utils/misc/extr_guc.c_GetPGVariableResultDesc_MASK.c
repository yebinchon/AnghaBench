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
typedef  int /*<<< orphan*/  TupleDesc ;
typedef  int /*<<< orphan*/  AttrNumber ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char const**,int) ; 
 int /*<<< orphan*/  TEXTOID ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (char const*,char*) ; 

TupleDesc
FUNC4(const char *name)
{
	TupleDesc	tupdesc;

	if (FUNC3(name, "all") == 0)
	{
		/* need a tuple descriptor representing three TEXT columns */
		tupdesc = FUNC0(3);
		FUNC2(tupdesc, (AttrNumber) 1, "name",
						   TEXTOID, -1, 0);
		FUNC2(tupdesc, (AttrNumber) 2, "setting",
						   TEXTOID, -1, 0);
		FUNC2(tupdesc, (AttrNumber) 3, "description",
						   TEXTOID, -1, 0);
	}
	else
	{
		const char *varname;

		/* Get the canonical spelling of name */
		(void) FUNC1(name, &varname, false);

		/* need a tuple descriptor representing a single TEXT column */
		tupdesc = FUNC0(1);
		FUNC2(tupdesc, (AttrNumber) 1, varname,
						   TEXTOID, -1, 0);
	}
	return tupdesc;
}