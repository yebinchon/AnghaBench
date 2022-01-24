#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {int nsubst; TYPE_2__* subst; TYPE_1__* subdict; } ;
struct TYPE_14__ {int flags; struct TYPE_14__* lexeme; } ;
struct TYPE_13__ {int reslen; TYPE_3__* res; } ;
struct TYPE_12__ {TYPE_3__* dictData; int /*<<< orphan*/  lexize; } ;
typedef  TYPE_3__ TSLexeme ;
typedef  TYPE_4__ DictThesaurus ;

/* Variables and functions */
 int DT_USEASIS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERRCODE_CONFIG_FILE_ERROR ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int TSL_ADDPOS ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 scalar_t__ FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*) ; 
 TYPE_3__* FUNC9 (TYPE_3__*) ; 
 scalar_t__ FUNC10 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*) ; 

__attribute__((used)) static void
FUNC12(DictThesaurus *d)
{
	int			i;

	for (i = 0; i < d->nsubst; i++)
	{
		TSLexeme   *rem = d->subst[i].res,
				   *outptr,
				   *inptr;
		int			n = 2;

		outptr = d->subst[i].res = (TSLexeme *) FUNC7(sizeof(TSLexeme) * n);
		outptr->lexeme = NULL;
		inptr = rem;

		while (inptr && inptr->lexeme)
		{
			TSLexeme   *lexized,
						tmplex[2];

			if (inptr->flags & DT_USEASIS)
			{					/* do not lexize */
				tmplex[0] = *inptr;
				tmplex[0].flags = 0;
				tmplex[1].lexeme = NULL;
				lexized = tmplex;
			}
			else
			{
				lexized = (TSLexeme *) FUNC0(
													   FUNC1(
																	 &(d->subdict->lexize),
																	 FUNC3(d->subdict->dictData),
																	 FUNC3(inptr->lexeme),
																	 FUNC2(FUNC11(inptr->lexeme)),
																	 FUNC3(NULL)
																	 )
					);
			}

			if (lexized && lexized->lexeme)
			{
				int			toset = (lexized->lexeme && outptr != d->subst[i].res) ? (outptr - d->subst[i].res) : -1;

				while (lexized->lexeme)
				{
					if (outptr - d->subst[i].res + 1 >= n)
					{
						int			diff = outptr - d->subst[i].res;

						n *= 2;
						d->subst[i].res = (TSLexeme *) FUNC10(d->subst[i].res, sizeof(TSLexeme) * n);
						outptr = d->subst[i].res + diff;
					}

					*outptr = *lexized;
					outptr->lexeme = FUNC9(lexized->lexeme);

					outptr++;
					lexized++;
				}

				if (toset > 0)
					d->subst[i].res[toset].flags |= TSL_ADDPOS;
			}
			else if (lexized)
			{
				FUNC4(ERROR,
						(FUNC5(ERRCODE_CONFIG_FILE_ERROR),
						 FUNC6("thesaurus substitute word \"%s\" is a stop word (rule %d)",
								inptr->lexeme, i + 1)));
			}
			else
			{
				FUNC4(ERROR,
						(FUNC5(ERRCODE_CONFIG_FILE_ERROR),
						 FUNC6("thesaurus substitute word \"%s\" isn't recognized by subdictionary (rule %d)",
								inptr->lexeme, i + 1)));
			}

			if (inptr->lexeme)
				FUNC8(inptr->lexeme);
			inptr++;
		}

		if (outptr == d->subst[i].res)
			FUNC4(ERROR,
					(FUNC5(ERRCODE_CONFIG_FILE_ERROR),
					 FUNC6("thesaurus substitute phrase is empty (rule %d)",
							i + 1)));

		d->subst[i].reslen = outptr - d->subst[i].res;

		FUNC8(rem);
	}
}