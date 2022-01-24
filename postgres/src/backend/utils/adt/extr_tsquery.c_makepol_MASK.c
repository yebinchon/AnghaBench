#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int ts_tokentype ;
typedef  int /*<<< orphan*/  int8 ;
typedef  int /*<<< orphan*/  int16 ;
struct TYPE_7__ {int (* gettoken ) (TYPE_1__*,int /*<<< orphan*/ *,int*,char**,int /*<<< orphan*/ *,int*) ;int /*<<< orphan*/  buffer; } ;
typedef  TYPE_1__* TSQueryParserState ;
typedef  int /*<<< orphan*/  (* PushFunction ) (int /*<<< orphan*/ ,TYPE_1__*,char*,int,int /*<<< orphan*/ ,int) ;
typedef  int /*<<< orphan*/  OperatorElement ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_SYNTAX_ERROR ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  OP_OR ; 
#define  PT_CLOSE 132 
 int PT_END ; 
#define  PT_ERR 131 
#define  PT_OPEN 130 
#define  PT_OPR 129 
#define  PT_VAL 128 
 int STACKDEPTH ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (TYPE_1__*,int /*<<< orphan*/ *,int*,char**,int /*<<< orphan*/ *,int*) ; 

__attribute__((used)) static void
FUNC7(TSQueryParserState state,
		PushFunction pushval,
		Datum opaque)
{
	int8		operator = 0;
	ts_tokentype type;
	int			lenval = 0;
	char	   *strval = NULL;
	OperatorElement opstack[STACKDEPTH];
	int			lenstack = 0;
	int16		weight = 0;
	bool		prefix;

	/* since this function recurses, it could be driven to stack overflow */
	FUNC0();

	while ((type = state->gettoken(state, &operator,
								   &lenval, &strval,
								   &weight, &prefix)) != PT_END)
	{
		switch (type)
		{
			case PT_VAL:
				pushval(opaque, state, strval, lenval, weight, prefix);
				break;
			case PT_OPR:
				FUNC1(state, opstack, &lenstack, operator);
				FUNC5(opstack, &lenstack, operator, weight);
				break;
			case PT_OPEN:
				FUNC7(state, pushval, opaque);
				break;
			case PT_CLOSE:
				FUNC1(state, opstack, &lenstack, OP_OR /* lowest */ );
				return;
			case PT_ERR:
			default:
				FUNC2(ERROR,
						(FUNC3(ERRCODE_SYNTAX_ERROR),
						 FUNC4("syntax error in tsquery: \"%s\"",
								state->buffer)));
		}
	}

	FUNC1(state, opstack, &lenstack, OP_OR /* lowest */ );
}