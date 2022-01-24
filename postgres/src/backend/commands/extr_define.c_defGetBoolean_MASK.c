#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  defname; int /*<<< orphan*/ * arg; } ;
typedef  TYPE_1__ DefElem ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_SYNTAX_ERROR ; 
 int /*<<< orphan*/  ERROR ; 
#define  T_Integer 128 
 char* FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 

bool
FUNC7(DefElem *def)
{
	/*
	 * If no parameter given, assume "true" is meant.
	 */
	if (def->arg == NULL)
		return true;

	/*
	 * Allow 0, 1, "true", "false", "on", "off"
	 */
	switch (FUNC5(def->arg))
	{
		case T_Integer:
			switch (FUNC4(def->arg))
			{
				case 0:
					return false;
				case 1:
					return true;
				default:
					/* otherwise, error out below */
					break;
			}
			break;
		default:
			{
				char	   *sval = FUNC0(def);

				/*
				 * The set of strings accepted here should match up with the
				 * grammar's opt_boolean_or_string production.
				 */
				if (FUNC6(sval, "true") == 0)
					return true;
				if (FUNC6(sval, "false") == 0)
					return false;
				if (FUNC6(sval, "on") == 0)
					return true;
				if (FUNC6(sval, "off") == 0)
					return false;
			}
			break;
	}
	FUNC1(ERROR,
			(FUNC2(ERRCODE_SYNTAX_ERROR),
			 FUNC3("%s requires a Boolean value",
					def->defname)));
	return false;				/* keep compiler quiet */
}