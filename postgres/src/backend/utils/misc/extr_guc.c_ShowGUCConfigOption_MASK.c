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
typedef  int /*<<< orphan*/  TupOutputState ;
typedef  int /*<<< orphan*/  DestReceiver ;
typedef  int /*<<< orphan*/  AttrNumber ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 char* FUNC1 (char const*,char const**,int) ; 
 int /*<<< orphan*/  TEXTOID ; 
 int /*<<< orphan*/  TTSOpsVirtual ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6(const char *name, DestReceiver *dest)
{
	TupOutputState *tstate;
	TupleDesc	tupdesc;
	const char *varname;
	char	   *value;

	/* Get the value and canonical spelling of name */
	value = FUNC1(name, &varname, false);

	/* need a tuple descriptor representing a single TEXT column */
	tupdesc = FUNC0(1);
	FUNC2(tupdesc, (AttrNumber) 1, varname,
							  TEXTOID, -1, 0);

	/* prepare for projection of tuples */
	tstate = FUNC3(dest, tupdesc, &TTSOpsVirtual);

	/* Send it */
	FUNC4(tstate, value);

	FUNC5(tstate);
}