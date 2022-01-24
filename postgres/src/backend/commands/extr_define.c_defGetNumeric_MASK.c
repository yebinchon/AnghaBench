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
struct TYPE_3__ {int /*<<< orphan*/  defname; int /*<<< orphan*/ * arg; } ;
typedef  TYPE_1__ DefElem ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_SYNTAX_ERROR ; 
 int /*<<< orphan*/  ERROR ; 
#define  T_Float 129 
#define  T_Integer 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 double FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 

double
FUNC6(DefElem *def)
{
	if (def->arg == NULL)
		FUNC0(ERROR,
				(FUNC1(ERRCODE_SYNTAX_ERROR),
				 FUNC2("%s requires a numeric value",
						def->defname)));
	switch (FUNC5(def->arg))
	{
		case T_Integer:
			return (double) FUNC4(def->arg);
		case T_Float:
			return FUNC3(def->arg);
		default:
			FUNC0(ERROR,
					(FUNC1(ERRCODE_SYNTAX_ERROR),
					 FUNC2("%s requires a numeric value",
							def->defname)));
	}
	return 0;					/* keep compiler quiet */
}