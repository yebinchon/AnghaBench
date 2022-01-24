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
typedef  int /*<<< orphan*/  uint16 ;
typedef  int int32 ;
typedef  int /*<<< orphan*/  QPRS_STATE ;

/* Variables and functions */
#define  CLOSE 132 
 int END ; 
#define  ERR 131 
 int /*<<< orphan*/  ERRCODE_SYNTAX_ERROR ; 
 int /*<<< orphan*/  ERROR ; 
#define  OPEN 130 
#define  OPR 129 
 int STACKDEPTH ; 
#define  VAL 128 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int FUNC5 (int /*<<< orphan*/ *,int*,int*,char**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int const,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int const,char*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int32
FUNC8(QPRS_STATE *state)
{
	int32		val = 0,
				type;
	int32		lenval = 0;
	char	   *strval = NULL;
	int32		stack[STACKDEPTH];
	int32		lenstack = 0;
	uint16		flag = 0;

	/* since this function recurses, it could be driven to stack overflow */
	FUNC0();

	while ((type = FUNC5(state, &val, &lenval, &strval, &flag)) != END)
	{
		switch (type)
		{
			case VAL:
				FUNC7(state, VAL, strval, lenval, flag);
				while (lenstack && (stack[lenstack - 1] == (int32) '&' ||
									stack[lenstack - 1] == (int32) '!'))
				{
					lenstack--;
					FUNC6(state, OPR, stack[lenstack], 0, 0, 0);
				}
				break;
			case OPR:
				if (lenstack && val == (int32) '|')
					FUNC6(state, OPR, val, 0, 0, 0);
				else
				{
					if (lenstack == STACKDEPTH)
						/* internal error */
						FUNC1(ERROR, "stack too short");
					stack[lenstack] = val;
					lenstack++;
				}
				break;
			case OPEN:
				if (FUNC8(state) == ERR)
					return ERR;
				while (lenstack && (stack[lenstack - 1] == (int32) '&' ||
									stack[lenstack - 1] == (int32) '!'))
				{
					lenstack--;
					FUNC6(state, OPR, stack[lenstack], 0, 0, 0);
				}
				break;
			case CLOSE:
				while (lenstack)
				{
					lenstack--;
					FUNC6(state, OPR, stack[lenstack], 0, 0, 0);
				};
				return END;
				break;
			case ERR:
			default:
				FUNC2(ERROR,
						(FUNC3(ERRCODE_SYNTAX_ERROR),
						 FUNC4("syntax error")));

				return ERR;

		}
	}
	while (lenstack)
	{
		lenstack--;
		FUNC6(state, OPR, stack[lenstack], 0, 0, 0);
	};
	return END;
}