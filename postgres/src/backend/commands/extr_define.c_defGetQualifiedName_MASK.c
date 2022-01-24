#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/ * names; } ;
typedef  TYPE_1__ TypeName ;
struct TYPE_5__ {int /*<<< orphan*/  defname; int /*<<< orphan*/ * arg; } ;
typedef  int /*<<< orphan*/  List ;
typedef  TYPE_2__ DefElem ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_SYNTAX_ERROR ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/ * NIL ; 
#define  T_List 130 
#define  T_String 129 
#define  T_TypeName 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 

List *
FUNC5(DefElem *def)
{
	if (def->arg == NULL)
		FUNC0(ERROR,
				(FUNC1(ERRCODE_SYNTAX_ERROR),
				 FUNC2("%s requires a parameter",
						def->defname)));
	switch (FUNC4(def->arg))
	{
		case T_TypeName:
			return ((TypeName *) def->arg)->names;
		case T_List:
			return (List *) def->arg;
		case T_String:
			/* Allow quoted name for backwards compatibility */
			return FUNC3(def->arg);
		default:
			FUNC0(ERROR,
					(FUNC1(ERRCODE_SYNTAX_ERROR),
					 FUNC2("argument of %s must be a name",
							def->defname)));
	}
	return NIL;					/* keep compiler quiet */
}