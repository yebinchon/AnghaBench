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
typedef  int /*<<< orphan*/  WordEntryPos ;
struct TYPE_3__ {char* word; char* prsbuf; int /*<<< orphan*/  bufstart; scalar_t__ oprisdelim; scalar_t__ is_web; } ;
typedef  TYPE_1__* TSVectorParseState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  ERRCODE_SYNTAX_ERROR ; 
 int /*<<< orphan*/  ERROR ; 
 int INPOSINFO ; 
 scalar_t__ FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PRSSYNTAXERROR ; 
 int /*<<< orphan*/  RESIZEPRSBUF ; 
 int /*<<< orphan*/  RETURN_TOKEN ; 
 int WAITCHARCMPLX ; 
 int WAITENDCMPLX ; 
 int WAITENDWORD ; 
 int WAITNEXTCHAR ; 
 int WAITPOSDELIM ; 
 int WAITPOSINFO ; 
 int WAITWORD ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int) ; 
 scalar_t__ FUNC14 (char*) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC16 (char*) ; 
 scalar_t__ FUNC17 (char*,char) ; 
 scalar_t__ FUNC18 (char*) ; 

bool
FUNC19(TSVectorParseState state,
				  char **strval, int *lenval,
				  WordEntryPos **pos_ptr, int *poslen,
				  char **endptr)
{
	int			oldstate = 0;
	char	   *curpos = state->word;
	int			statecode = WAITWORD;

	/*
	 * pos is for collecting the comma delimited list of positions followed by
	 * the actual token.
	 */
	WordEntryPos *pos = NULL;
	int			npos = 0;		/* elements of pos used */
	int			posalen = 0;	/* allocated size of pos */

	while (1)
	{
		if (statecode == WAITWORD)
		{
			if (*(state->prsbuf) == '\0')
				return false;
			else if (!state->is_web && FUNC17(state->prsbuf, '\''))
				statecode = WAITENDCMPLX;
			else if (!state->is_web && FUNC17(state->prsbuf, '\\'))
			{
				statecode = WAITNEXTCHAR;
				oldstate = WAITENDWORD;
			}
			else if ((state->oprisdelim && FUNC2(state->prsbuf)) ||
					 (state->is_web && FUNC17(state->prsbuf, '"')))
				PRSSYNTAXERROR;
			else if (!FUNC18(state->prsbuf))
			{
				FUNC1(curpos, state->prsbuf);
				curpos += FUNC14(state->prsbuf);
				statecode = WAITENDWORD;
			}
		}
		else if (statecode == WAITNEXTCHAR)
		{
			if (*(state->prsbuf) == '\0')
				FUNC10(ERROR,
						(FUNC11(ERRCODE_SYNTAX_ERROR),
						 FUNC12("there is no escaped character: \"%s\"",
								state->bufstart)));
			else
			{
				RESIZEPRSBUF;
				FUNC1(curpos, state->prsbuf);
				curpos += FUNC14(state->prsbuf);
				FUNC0(oldstate != 0);
				statecode = oldstate;
			}
		}
		else if (statecode == WAITENDWORD)
		{
			if (!state->is_web && FUNC17(state->prsbuf, '\\'))
			{
				statecode = WAITNEXTCHAR;
				oldstate = WAITENDWORD;
			}
			else if (FUNC18(state->prsbuf) || *(state->prsbuf) == '\0' ||
					 (state->oprisdelim && FUNC2(state->prsbuf)) ||
					 (state->is_web && FUNC17(state->prsbuf, '"')))
			{
				RESIZEPRSBUF;
				if (curpos == state->word)
					PRSSYNTAXERROR;
				*(curpos) = '\0';
				RETURN_TOKEN;
			}
			else if (FUNC17(state->prsbuf, ':'))
			{
				if (curpos == state->word)
					PRSSYNTAXERROR;
				*(curpos) = '\0';
				if (state->oprisdelim)
					RETURN_TOKEN;
				else
					statecode = INPOSINFO;
			}
			else
			{
				RESIZEPRSBUF;
				FUNC1(curpos, state->prsbuf);
				curpos += FUNC14(state->prsbuf);
			}
		}
		else if (statecode == WAITENDCMPLX)
		{
			if (!state->is_web && FUNC17(state->prsbuf, '\''))
			{
				statecode = WAITCHARCMPLX;
			}
			else if (!state->is_web && FUNC17(state->prsbuf, '\\'))
			{
				statecode = WAITNEXTCHAR;
				oldstate = WAITENDCMPLX;
			}
			else if (*(state->prsbuf) == '\0')
				PRSSYNTAXERROR;
			else
			{
				RESIZEPRSBUF;
				FUNC1(curpos, state->prsbuf);
				curpos += FUNC14(state->prsbuf);
			}
		}
		else if (statecode == WAITCHARCMPLX)
		{
			if (!state->is_web && FUNC17(state->prsbuf, '\''))
			{
				RESIZEPRSBUF;
				FUNC1(curpos, state->prsbuf);
				curpos += FUNC14(state->prsbuf);
				statecode = WAITENDCMPLX;
			}
			else
			{
				RESIZEPRSBUF;
				*(curpos) = '\0';
				if (curpos == state->word)
					PRSSYNTAXERROR;
				if (state->oprisdelim)
				{
					/* state->prsbuf+=pg_mblen(state->prsbuf); */
					RETURN_TOKEN;
				}
				else
					statecode = WAITPOSINFO;
				continue;		/* recheck current character */
			}
		}
		else if (statecode == WAITPOSINFO)
		{
			if (FUNC17(state->prsbuf, ':'))
				statecode = INPOSINFO;
			else
				RETURN_TOKEN;
		}
		else if (statecode == INPOSINFO)
		{
			if (FUNC16(state->prsbuf))
			{
				if (posalen == 0)
				{
					posalen = 4;
					pos = (WordEntryPos *) FUNC13(sizeof(WordEntryPos) * posalen);
					npos = 0;
				}
				else if (npos + 1 >= posalen)
				{
					posalen *= 2;
					pos = (WordEntryPos *) FUNC15(pos, sizeof(WordEntryPos) * posalen);
				}
				npos++;
				FUNC6(pos[npos - 1], FUNC3(FUNC8(state->prsbuf)));
				/* we cannot get here in tsquery, so no need for 2 errmsgs */
				if (FUNC4(pos[npos - 1]) == 0)
					FUNC10(ERROR,
							(FUNC11(ERRCODE_SYNTAX_ERROR),
							 FUNC12("wrong position info in tsvector: \"%s\"",
									state->bufstart)));
				FUNC7(pos[npos - 1], 0);
				statecode = WAITPOSDELIM;
			}
			else
				PRSSYNTAXERROR;
		}
		else if (statecode == WAITPOSDELIM)
		{
			if (FUNC17(state->prsbuf, ','))
				statecode = INPOSINFO;
			else if (FUNC17(state->prsbuf, 'a') || FUNC17(state->prsbuf, 'A') || FUNC17(state->prsbuf, '*'))
			{
				if (FUNC5(pos[npos - 1]))
					PRSSYNTAXERROR;
				FUNC7(pos[npos - 1], 3);
			}
			else if (FUNC17(state->prsbuf, 'b') || FUNC17(state->prsbuf, 'B'))
			{
				if (FUNC5(pos[npos - 1]))
					PRSSYNTAXERROR;
				FUNC7(pos[npos - 1], 2);
			}
			else if (FUNC17(state->prsbuf, 'c') || FUNC17(state->prsbuf, 'C'))
			{
				if (FUNC5(pos[npos - 1]))
					PRSSYNTAXERROR;
				FUNC7(pos[npos - 1], 1);
			}
			else if (FUNC17(state->prsbuf, 'd') || FUNC17(state->prsbuf, 'D'))
			{
				if (FUNC5(pos[npos - 1]))
					PRSSYNTAXERROR;
				FUNC7(pos[npos - 1], 0);
			}
			else if (FUNC18(state->prsbuf) ||
					 *(state->prsbuf) == '\0')
				RETURN_TOKEN;
			else if (!FUNC16(state->prsbuf))
				PRSSYNTAXERROR;
		}
		else					/* internal error */
			FUNC9(ERROR, "unrecognized state in gettoken_tsvector: %d",
				 statecode);

		/* get next char */
		state->prsbuf += FUNC14(state->prsbuf);
	}
}