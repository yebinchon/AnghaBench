#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int64 ;
struct TYPE_8__ {scalar_t__ type; } ;
struct TYPE_7__ {char* svalue; char* name; TYPE_2__ value; } ;
typedef  TYPE_1__ Variable ;

/* Variables and functions */
 scalar_t__ PGBT_NO_VALUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*,char*) ; 
 scalar_t__ FUNC1 (char*) ; 
 scalar_t__ FUNC2 (char*,char*) ; 
 scalar_t__ FUNC3 (char*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,double) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  stderr ; 
 size_t FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,int,double*) ; 
 int /*<<< orphan*/  FUNC10 (char*,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool
FUNC11(Variable *var)
{
	size_t		slen;

	if (var->value.type != PGBT_NO_VALUE)
		return true;			/* no work */

	slen = FUNC8(var->svalue);

	if (slen == 0)
		/* what should it do on ""? */
		return false;

	if (FUNC2(var->svalue, "null") == 0)
	{
		FUNC7(&var->value);
	}

	/*
	 * accept prefixes such as y, ye, n, no... but not for "o". 0/1 are
	 * recognized later as an int, which is converted to bool if needed.
	 */
	else if (FUNC3(var->svalue, "true", slen) == 0 ||
			 FUNC3(var->svalue, "yes", slen) == 0 ||
			 FUNC2(var->svalue, "on") == 0)
	{
		FUNC4(&var->value, true);
	}
	else if (FUNC3(var->svalue, "false", slen) == 0 ||
			 FUNC3(var->svalue, "no", slen) == 0 ||
			 FUNC2(var->svalue, "off") == 0 ||
			 FUNC2(var->svalue, "of") == 0)
	{
		FUNC4(&var->value, false);
	}
	else if (FUNC1(var->svalue))
	{
		/* if it looks like an int, it must be an int without overflow */
		int64		iv;

		if (!FUNC10(var->svalue, false, &iv))
			return false;

		FUNC6(&var->value, iv);
	}
	else						/* type should be double */
	{
		double		dv;

		if (!FUNC9(var->svalue, true, &dv))
		{
			FUNC0(stderr,
					"malformed variable \"%s\" value: \"%s\"\n",
					var->name, var->svalue);
			return false;
		}
		FUNC5(&var->value, dv);
	}
	return true;
}