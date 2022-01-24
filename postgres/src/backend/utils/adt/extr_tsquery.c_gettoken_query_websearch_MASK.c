#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ts_tokentype ;
typedef  int /*<<< orphan*/  int8 ;
typedef  int int16 ;
struct TYPE_5__ {int state; char* buf; int in_quotes; int /*<<< orphan*/  valstate; } ;
typedef  TYPE_1__* TSQueryParserState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  OP_AND ; 
 int /*<<< orphan*/  OP_NOT ; 
 int /*<<< orphan*/  OP_OR ; 
 int /*<<< orphan*/  OP_PHRASE ; 
 int /*<<< orphan*/  PT_CLOSE ; 
 int /*<<< orphan*/  PT_END ; 
 int /*<<< orphan*/  PT_OPEN ; 
 int /*<<< orphan*/  PT_OPR ; 
 int /*<<< orphan*/  PT_VAL ; 
#define  WAITFIRSTOPERAND 130 
#define  WAITOPERAND 129 
#define  WAITOPERATOR 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char**,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char**) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char) ; 
 int /*<<< orphan*/  FUNC7 (char*,char) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 

__attribute__((used)) static ts_tokentype
FUNC9(TSQueryParserState state, int8 *operator,
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
				if (FUNC7(state->buf, '-'))
				{
					state->buf++;
					state->state = WAITOPERAND;

					if (state->in_quotes)
						continue;

					*operator = OP_NOT;
					return PT_OPR;
				}
				else if (FUNC7(state->buf, '"'))
				{
					state->buf++;

					if (!state->in_quotes)
					{
						state->state = WAITOPERAND;

						if (FUNC6(state->buf, '"'))
						{
							/* quoted text should be ordered <-> */
							state->in_quotes = true;
							return PT_OPEN;
						}

						/* web search tolerates missing quotes */
						continue;
					}
					else
					{
						/* we have to provide an operand */
						state->in_quotes = false;
						state->state = WAITOPERATOR;
						FUNC4(state);
						return PT_CLOSE;
					}
				}
				else if (FUNC0(state->buf))
				{
					/* or else gettoken_tsvector() will raise an error */
					state->buf++;
					state->state = WAITOPERAND;
					continue;
				}
				else if (!FUNC8(state->buf))
				{
					/*
					 * We rely on the tsvector parser to parse the value for
					 * us
					 */
					FUNC5(state->valstate, state->buf);
					if (FUNC1(state->valstate, strval, lenval,
										  NULL, NULL, &state->buf))
					{
						state->state = WAITOPERATOR;
						return PT_VAL;
					}
					else if (state->state == WAITFIRSTOPERAND)
					{
						return PT_END;
					}
					else
					{
						/* finally, we have to provide an operand */
						FUNC4(state);
						return PT_END;
					}
				}
				break;

			case WAITOPERATOR:
				if (FUNC7(state->buf, '"'))
				{
					if (!state->in_quotes)
					{
						/*
						 * put implicit AND after an operand and handle this
						 * quote in WAITOPERAND
						 */
						state->state = WAITOPERAND;
						*operator = OP_AND;
						return PT_OPR;
					}
					else
					{
						state->buf++;

						/* just close quotes */
						state->in_quotes = false;
						return PT_CLOSE;
					}
				}
				else if (FUNC2(state))
				{
					state->state = WAITOPERAND;
					*operator = OP_OR;
					return PT_OPR;
				}
				else if (*state->buf == '\0')
				{
					return PT_END;
				}
				else if (!FUNC8(state->buf))
				{
					if (state->in_quotes)
					{
						/* put implicit <-> after an operand */
						*operator = OP_PHRASE;
						*weight = 1;
					}
					else
					{
						/* put implicit AND after an operand */
						*operator = OP_AND;
					}

					state->state = WAITOPERAND;
					return PT_OPR;
				}
				break;
		}

		state->buf += FUNC3(state->buf);
	}
}