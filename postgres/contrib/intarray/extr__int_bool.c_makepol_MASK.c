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
typedef  int int32 ;
typedef  int /*<<< orphan*/  WORKSTATE ;

/* Variables and functions */
#define  CLOSE 132 
 int END ; 
#define  ERR 131 
 int /*<<< orphan*/  ERRCODE_STATEMENT_TOO_COMPLEX ; 
 int /*<<< orphan*/  ERRCODE_SYNTAX_ERROR ; 
 int /*<<< orphan*/  ERROR ; 
#define  OPEN 130 
#define  OPR 129 
 int STACKDEPTH ; 
#define  VAL 128 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int FUNC4 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int const,int) ; 

__attribute__((used)) static int32
FUNC6(WORKSTATE *state)
{
	int32		val,
				type;
	int32		stack[STACKDEPTH];
	int32		lenstack = 0;

	/* since this function recurses, it could be driven to stack overflow */
	FUNC0();

	while ((type = FUNC4(state, &val)) != END)
	{
		switch (type)
		{
			case VAL:
				FUNC5(state, type, val);
				while (lenstack && (stack[lenstack - 1] == (int32) '&' ||
									stack[lenstack - 1] == (int32) '!'))
				{
					lenstack--;
					FUNC5(state, OPR, stack[lenstack]);
				}
				break;
			case OPR:
				if (lenstack && val == (int32) '|')
					FUNC5(state, OPR, val);
				else
				{
					if (lenstack == STACKDEPTH)
						FUNC1(ERROR,
								(FUNC2(ERRCODE_STATEMENT_TOO_COMPLEX),
								 FUNC3("statement too complex")));
					stack[lenstack] = val;
					lenstack++;
				}
				break;
			case OPEN:
				if (FUNC6(state) == ERR)
					return ERR;
				while (lenstack && (stack[lenstack - 1] == (int32) '&' ||
									stack[lenstack - 1] == (int32) '!'))
				{
					lenstack--;
					FUNC5(state, OPR, stack[lenstack]);
				}
				break;
			case CLOSE:
				while (lenstack)
				{
					lenstack--;
					FUNC5(state, OPR, stack[lenstack]);
				};
				return END;
				break;
			case ERR:
			default:
				FUNC1(ERROR,
						(FUNC2(ERRCODE_SYNTAX_ERROR),
						 FUNC3("syntax error")));
				return ERR;

		}
	}

	while (lenstack)
	{
		lenstack--;
		FUNC5(state, OPR, stack[lenstack]);
	};
	return END;
}