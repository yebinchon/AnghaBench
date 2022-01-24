#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  TypeName ;
struct TYPE_3__ {int /*<<< orphan*/ * arg; int /*<<< orphan*/  defname; } ;
typedef  int /*<<< orphan*/  List ;
typedef  TYPE_1__ DefElem ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_SYNTAX_ERROR ; 
 int /*<<< orphan*/  ERROR ; 
 char* FUNC0 (int /*<<< orphan*/ *) ; 
#define  T_A_Star 133 
#define  T_Float 132 
#define  T_Integer 131 
#define  T_List 130 
#define  T_String 129 
#define  T_TypeName 128 
 char* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 char* FUNC8 (char*,long) ; 
 char* FUNC9 (char*) ; 
 char* FUNC10 (int /*<<< orphan*/ *) ; 

char *
FUNC11(DefElem *def)
{
	if (def->arg == NULL)
		FUNC3(ERROR,
				(FUNC4(ERRCODE_SYNTAX_ERROR),
				 FUNC5("%s requires a parameter",
						def->defname)));
	switch (FUNC7(def->arg))
	{
		case T_Integer:
			return FUNC8("%ld", (long) FUNC6(def->arg));
		case T_Float:

			/*
			 * T_Float values are kept in string form, so this type cheat
			 * works (and doesn't risk losing precision)
			 */
			return FUNC10(def->arg);
		case T_String:
			return FUNC10(def->arg);
		case T_TypeName:
			return FUNC1((TypeName *) def->arg);
		case T_List:
			return FUNC0((List *) def->arg);
		case T_A_Star:
			return FUNC9("*");
		default:
			FUNC2(ERROR, "unrecognized node type: %d", (int) FUNC7(def->arg));
	}
	return NULL;				/* keep compiler quiet */
}