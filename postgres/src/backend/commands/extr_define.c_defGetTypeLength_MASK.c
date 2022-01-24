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
typedef  int /*<<< orphan*/  TypeName ;
struct TYPE_4__ {int /*<<< orphan*/  defname; int /*<<< orphan*/ * arg; } ;
typedef  TYPE_1__ DefElem ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_SYNTAX_ERROR ; 
 int /*<<< orphan*/  ERROR ; 
#define  T_Float 132 
#define  T_Integer 131 
#define  T_List 130 
#define  T_String 129 
#define  T_TypeName 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,...) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

int
FUNC10(DefElem *def)
{
	if (def->arg == NULL)
		FUNC3(ERROR,
				(FUNC4(ERRCODE_SYNTAX_ERROR),
				 FUNC5("%s requires a parameter",
						def->defname)));
	switch (FUNC7(def->arg))
	{
		case T_Integer:
			return FUNC6(def->arg);
		case T_Float:
			FUNC3(ERROR,
					(FUNC4(ERRCODE_SYNTAX_ERROR),
					 FUNC5("%s requires an integer value",
							def->defname)));
			break;
		case T_String:
			if (FUNC8(FUNC9(def->arg), "variable") == 0)
				return -1;		/* variable length */
			break;
		case T_TypeName:
			/* cope if grammar chooses to believe "variable" is a typename */
			if (FUNC8(FUNC0((TypeName *) def->arg),
							  "variable") == 0)
				return -1;		/* variable length */
			break;
		case T_List:
			/* must be an operator name */
			break;
		default:
			FUNC2(ERROR, "unrecognized node type: %d", (int) FUNC7(def->arg));
	}
	FUNC3(ERROR,
			(FUNC4(ERRCODE_SYNTAX_ERROR),
			 FUNC5("invalid argument for %s: \"%s\"",
					def->defname, FUNC1(def))));
	return 0;					/* keep compiler quiet */
}