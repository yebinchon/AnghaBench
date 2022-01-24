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
typedef  int /*<<< orphan*/  int64 ;
struct TYPE_3__ {int /*<<< orphan*/  defname; int /*<<< orphan*/ * arg; } ;
typedef  TYPE_1__ DefElem ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERRCODE_SYNTAX_ERROR ; 
 int /*<<< orphan*/  ERROR ; 
#define  T_Float 129 
#define  T_Integer 128 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  int8in ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

int64
FUNC9(DefElem *def)
{
	if (def->arg == NULL)
		FUNC3(ERROR,
				(FUNC4(ERRCODE_SYNTAX_ERROR),
				 FUNC5("%s requires a numeric value",
						def->defname)));
	switch (FUNC7(def->arg))
	{
		case T_Integer:
			return (int64) FUNC6(def->arg);
		case T_Float:

			/*
			 * Values too large for int4 will be represented as Float
			 * constants by the lexer.  Accept these if they are valid int8
			 * strings.
			 */
			return FUNC1(FUNC2(int8in,
													 FUNC0(FUNC8(def->arg))));
		default:
			FUNC3(ERROR,
					(FUNC4(ERRCODE_SYNTAX_ERROR),
					 FUNC5("%s requires a numeric value",
							def->defname)));
	}
	return 0;					/* keep compiler quiet */
}