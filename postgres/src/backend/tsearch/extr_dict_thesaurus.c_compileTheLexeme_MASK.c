#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_4__ ;
typedef  struct TYPE_23__   TYPE_3__ ;
typedef  struct TYPE_22__   TYPE_2__ ;
typedef  struct TYPE_21__   TYPE_1__ ;

/* Type definitions */
struct TYPE_22__ {struct TYPE_22__* lexeme; struct TYPE_22__* entries; struct TYPE_22__* nextentry; scalar_t__ idsubst; } ;
typedef  TYPE_2__ TheLexeme ;
struct TYPE_24__ {int nwrds; int ntwrds; TYPE_2__* wrds; TYPE_1__* subdict; } ;
struct TYPE_23__ {int nvariant; scalar_t__ lexeme; } ;
struct TYPE_21__ {TYPE_2__* dictData; int /*<<< orphan*/  lexize; } ;
typedef  TYPE_3__ TSLexeme ;
typedef  TYPE_4__ DictThesaurus ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERRCODE_CONFIG_FILE_ERROR ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 TYPE_2__* FUNC4 (TYPE_2__*,int*,int*,TYPE_3__*,TYPE_2__*,int) ; 
 scalar_t__ FUNC5 (TYPE_2__*,TYPE_2__*) ; 
 scalar_t__ FUNC6 (TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  cmpTheLexeme ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (char*,TYPE_2__*,scalar_t__) ; 
 scalar_t__ FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*,int,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (TYPE_2__*,int) ; 
 scalar_t__ FUNC15 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_2__*) ; 

__attribute__((used)) static void
FUNC17(DictThesaurus *d)
{
	int			i,
				nnw = 0,
				tnm = 16;
	TheLexeme  *newwrds = (TheLexeme *) FUNC11(sizeof(TheLexeme) * tnm),
			   *ptrwrds;

	for (i = 0; i < d->nwrds; i++)
	{
		TSLexeme   *ptr;

		if (FUNC15(d->wrds[i].lexeme, "?") == 0)	/* Is stop word marker? */
			newwrds = FUNC4(newwrds, &nnw, &tnm, NULL, d->wrds[i].entries, 0);
		else
		{
			ptr = (TSLexeme *) FUNC0(FUNC1(&(d->subdict->lexize),
															 FUNC3(d->subdict->dictData),
															 FUNC3(d->wrds[i].lexeme),
															 FUNC2(FUNC16(d->wrds[i].lexeme)),
															 FUNC3(NULL)));

			if (!ptr)
				FUNC7(ERROR,
						(FUNC8(ERRCODE_CONFIG_FILE_ERROR),
						 FUNC10("thesaurus sample word \"%s\" isn't recognized by subdictionary (rule %d)",
								d->wrds[i].lexeme,
								d->wrds[i].entries->idsubst + 1)));
			else if (!(ptr->lexeme))
				FUNC7(ERROR,
						(FUNC8(ERRCODE_CONFIG_FILE_ERROR),
						 FUNC10("thesaurus sample word \"%s\" is a stop word (rule %d)",
								d->wrds[i].lexeme,
								d->wrds[i].entries->idsubst + 1),
						 FUNC9("Use \"?\" to represent a stop word within a sample phrase.")));
			else
			{
				while (ptr->lexeme)
				{
					TSLexeme   *remptr = ptr + 1;
					int			tnvar = 1;
					int			curvar = ptr->nvariant;

					/* compute n words in one variant */
					while (remptr->lexeme)
					{
						if (remptr->nvariant != (remptr - 1)->nvariant)
							break;
						tnvar++;
						remptr++;
					}

					remptr = ptr;
					while (remptr->lexeme && remptr->nvariant == curvar)
					{
						newwrds = FUNC4(newwrds, &nnw, &tnm, remptr, d->wrds[i].entries, tnvar);
						remptr++;
					}

					ptr = remptr;
				}
			}
		}

		FUNC12(d->wrds[i].lexeme);
		FUNC12(d->wrds[i].entries);
	}

	if (d->wrds)
		FUNC12(d->wrds);
	d->wrds = newwrds;
	d->nwrds = nnw;
	d->ntwrds = tnm;

	if (d->nwrds > 1)
	{
		FUNC13(d->wrds, d->nwrds, sizeof(TheLexeme), cmpTheLexeme);

		/* uniq */
		newwrds = d->wrds;
		ptrwrds = d->wrds + 1;
		while (ptrwrds - d->wrds < d->nwrds)
		{
			if (FUNC5(ptrwrds, newwrds) == 0)
			{
				if (FUNC6(ptrwrds->entries, newwrds->entries))
				{
					ptrwrds->entries->nextentry = newwrds->entries;
					newwrds->entries = ptrwrds->entries;
				}
				else
					FUNC12(ptrwrds->entries);

				if (ptrwrds->lexeme)
					FUNC12(ptrwrds->lexeme);
			}
			else
			{
				newwrds++;
				*newwrds = *ptrwrds;
			}

			ptrwrds++;
		}

		d->nwrds = newwrds - d->wrds + 1;
		d->wrds = (TheLexeme *) FUNC14(d->wrds, sizeof(TheLexeme) * d->nwrds);
	}
}