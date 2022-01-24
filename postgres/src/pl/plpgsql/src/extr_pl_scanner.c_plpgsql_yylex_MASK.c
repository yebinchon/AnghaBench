#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_6__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  ident; int /*<<< orphan*/  quoted; } ;
struct TYPE_8__ {void* keyword; TYPE_4__ word; int /*<<< orphan*/  wdatum; int /*<<< orphan*/  str; int /*<<< orphan*/  cword; } ;
struct TYPE_7__ {int /*<<< orphan*/  leng; scalar_t__ lloc; TYPE_3__ lval; } ;
typedef  TYPE_1__ TokenAuxData ;
struct TYPE_10__ {scalar_t__ scanbuf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int COLON_EQUALS ; 
 void* FUNC1 (int,int /*<<< orphan*/ *) ; 
 int IDENT ; 
 int PARAM ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int T_CWORD ; 
 int T_DATUM ; 
 int T_WORD ; 
 int* UnreservedPLKeywordTokens ; 
 int /*<<< orphan*/  UnreservedPLKeywords ; 
 TYPE_6__ core_yy ; 
 int FUNC3 (TYPE_1__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,scalar_t__,int,int /*<<< orphan*/ *,TYPE_4__*) ; 
 int /*<<< orphan*/  plpgsql_yyleng ; 
 scalar_t__ plpgsql_yylloc ; 
 TYPE_3__ plpgsql_yylval ; 
 int plpgsql_yytoken ; 
 int /*<<< orphan*/  FUNC7 (int,TYPE_1__*) ; 

int
FUNC8(void)
{
	int			tok1;
	TokenAuxData aux1;
	int			kwnum;

	tok1 = FUNC3(&aux1);
	if (tok1 == IDENT || tok1 == PARAM)
	{
		int			tok2;
		TokenAuxData aux2;

		tok2 = FUNC3(&aux2);
		if (tok2 == '.')
		{
			int			tok3;
			TokenAuxData aux3;

			tok3 = FUNC3(&aux3);
			if (tok3 == IDENT)
			{
				int			tok4;
				TokenAuxData aux4;

				tok4 = FUNC3(&aux4);
				if (tok4 == '.')
				{
					int			tok5;
					TokenAuxData aux5;

					tok5 = FUNC3(&aux5);
					if (tok5 == IDENT)
					{
						if (FUNC5(aux1.lval.str,
												   aux3.lval.str,
												   aux5.lval.str,
												   &aux1.lval.wdatum,
												   &aux1.lval.cword))
							tok1 = T_DATUM;
						else
							tok1 = T_CWORD;
					}
					else
					{
						/* not A.B.C, so just process A.B */
						FUNC7(tok5, &aux5);
						FUNC7(tok4, &aux4);
						if (FUNC4(aux1.lval.str,
												  aux3.lval.str,
												  &aux1.lval.wdatum,
												  &aux1.lval.cword))
							tok1 = T_DATUM;
						else
							tok1 = T_CWORD;
					}
				}
				else
				{
					/* not A.B.C, so just process A.B */
					FUNC7(tok4, &aux4);
					if (FUNC4(aux1.lval.str,
											  aux3.lval.str,
											  &aux1.lval.wdatum,
											  &aux1.lval.cword))
						tok1 = T_DATUM;
					else
						tok1 = T_CWORD;
				}
			}
			else
			{
				/* not A.B, so just process A */
				FUNC7(tok3, &aux3);
				FUNC7(tok2, &aux2);
				if (FUNC6(aux1.lval.str,
									   core_yy.scanbuf + aux1.lloc,
									   true,
									   &aux1.lval.wdatum,
									   &aux1.lval.word))
					tok1 = T_DATUM;
				else if (!aux1.lval.word.quoted &&
						 (kwnum = FUNC2(aux1.lval.word.ident,
													&UnreservedPLKeywords)) >= 0)
				{
					aux1.lval.keyword = FUNC1(kwnum,
													   &UnreservedPLKeywords);
					tok1 = UnreservedPLKeywordTokens[kwnum];
				}
				else
					tok1 = T_WORD;
			}
		}
		else
		{
			/* not A.B, so just process A */
			FUNC7(tok2, &aux2);

			/*
			 * See if it matches a variable name, except in the context where
			 * we are at start of statement and the next token isn't
			 * assignment or '['.  In that case, it couldn't validly be a
			 * variable name, and skipping the lookup allows variable names to
			 * be used that would conflict with plpgsql or core keywords that
			 * introduce statements (e.g., "comment").  Without this special
			 * logic, every statement-introducing keyword would effectively be
			 * reserved in PL/pgSQL, which would be unpleasant.
			 *
			 * If it isn't a variable name, try to match against unreserved
			 * plpgsql keywords.  If not one of those either, it's T_WORD.
			 *
			 * Note: we must call plpgsql_parse_word even if we don't want to
			 * do variable lookup, because it sets up aux1.lval.word for the
			 * non-variable cases.
			 */
			if (FUNC6(aux1.lval.str,
								   core_yy.scanbuf + aux1.lloc,
								   (!FUNC0(plpgsql_yytoken) ||
									(tok2 == '=' || tok2 == COLON_EQUALS ||
									 tok2 == '[')),
								   &aux1.lval.wdatum,
								   &aux1.lval.word))
				tok1 = T_DATUM;
			else if (!aux1.lval.word.quoted &&
					 (kwnum = FUNC2(aux1.lval.word.ident,
												&UnreservedPLKeywords)) >= 0)
			{
				aux1.lval.keyword = FUNC1(kwnum,
												   &UnreservedPLKeywords);
				tok1 = UnreservedPLKeywordTokens[kwnum];
			}
			else
				tok1 = T_WORD;
		}
	}
	else
	{
		/*
		 * Not a potential plpgsql variable name, just return the data.
		 *
		 * Note that we also come through here if the grammar pushed back a
		 * T_DATUM, T_CWORD, T_WORD, or unreserved-keyword token returned by a
		 * previous lookup cycle; thus, pushbacks do not incur extra lookup
		 * work, since we'll never do the above code twice for the same token.
		 * This property also makes it safe to rely on the old value of
		 * plpgsql_yytoken in the is-this-start-of-statement test above.
		 */
	}

	plpgsql_yylval = aux1.lval;
	plpgsql_yylloc = aux1.lloc;
	plpgsql_yyleng = aux1.leng;
	plpgsql_yytoken = tok1;
	return tok1;
}