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
typedef  int /*<<< orphan*/  ts_tokentype ;
typedef  int /*<<< orphan*/  int8 ;
typedef  scalar_t__ int16 ;
struct TYPE_4__ {int state; char* buf; int /*<<< orphan*/  count; int /*<<< orphan*/  buffer; int /*<<< orphan*/  valstate; } ;
typedef  TYPE_1__* TSQueryParserState ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_SYNTAX_ERROR ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  OP_AND ; 
 int /*<<< orphan*/  OP_NOT ; 
 int /*<<< orphan*/  OP_OR ; 
 int /*<<< orphan*/  OP_PHRASE ; 
 int /*<<< orphan*/  PT_CLOSE ; 
 int /*<<< orphan*/  PT_END ; 
 int /*<<< orphan*/  PT_ERR ; 
 int /*<<< orphan*/  PT_OPEN ; 
 int /*<<< orphan*/  PT_OPR ; 
 int /*<<< orphan*/  PT_VAL ; 
#define  WAITFIRSTOPERAND 130 
#define  WAITOPERAND 129 
#define  WAITOPERATOR 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 char* FUNC3 (char*,scalar_t__*,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char**,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char**) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,scalar_t__*) ; 
 scalar_t__ FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 

__attribute__((used)) static ts_tokentype
FUNC10(TSQueryParserState state, int8 *operator,
						int *lenval, char **strval,
						int16 *weight, bool *prefix)
{
	*weight = 0;
	*prefix = false;

	while (true)
	{
		switch (state->state)
		{
			case WAITFIRSTOPERAND:
			case WAITOPERAND:
				if (FUNC8(state->buf, '!'))
				{
					state->buf++;
					state->state = WAITOPERAND;
					*operator = OP_NOT;
					return PT_OPR;
				}
				else if (FUNC8(state->buf, '('))
				{
					state->buf++;
					state->state = WAITOPERAND;
					state->count++;
					return PT_OPEN;
				}
				else if (FUNC8(state->buf, ':'))
				{
					FUNC0(ERROR,
							(FUNC1(ERRCODE_SYNTAX_ERROR),
							 FUNC2("syntax error in tsquery: \"%s\"",
									state->buffer)));
				}
				else if (!FUNC9(state->buf))
				{
					/*
					 * We rely on the tsvector parser to parse the value for
					 * us
					 */
					FUNC7(state->valstate, state->buf);
					if (FUNC4(state->valstate, strval, lenval,
										  NULL, NULL, &state->buf))
					{
						state->buf = FUNC3(state->buf, weight, prefix);
						state->state = WAITOPERATOR;
						return PT_VAL;
					}
					else if (state->state == WAITFIRSTOPERAND)
					{
						return PT_END;
					}
					else
						FUNC0(ERROR,
								(FUNC1(ERRCODE_SYNTAX_ERROR),
								 FUNC2("no operand in tsquery: \"%s\"",
										state->buffer)));
				}
				break;

			case WAITOPERATOR:
				if (FUNC8(state->buf, '&'))
				{
					state->buf++;
					state->state = WAITOPERAND;
					*operator = OP_AND;
					return PT_OPR;
				}
				else if (FUNC8(state->buf, '|'))
				{
					state->buf++;
					state->state = WAITOPERAND;
					*operator = OP_OR;
					return PT_OPR;
				}
				else if (FUNC5(state, weight))
				{
					/* weight var is used as storage for distance */
					state->state = WAITOPERAND;
					*operator = OP_PHRASE;
					return PT_OPR;
				}
				else if (FUNC8(state->buf, ')'))
				{
					state->buf++;
					state->count--;
					return (state->count < 0) ? PT_ERR : PT_CLOSE;
				}
				else if (*state->buf == '\0')
				{
					return (state->count) ? PT_ERR : PT_END;
				}
				else if (!FUNC9(state->buf))
				{
					return PT_ERR;
				}
				break;
		}

		state->buf += FUNC6(state->buf);
	}
}