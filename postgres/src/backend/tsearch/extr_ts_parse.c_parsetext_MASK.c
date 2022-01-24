#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_6__ ;
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_18__ {size_t curwords; size_t lenwords; int /*<<< orphan*/  pos; TYPE_5__* words; } ;
struct TYPE_13__ {int /*<<< orphan*/  pos; } ;
struct TYPE_17__ {int flags; TYPE_1__ pos; scalar_t__ alen; int /*<<< orphan*/  nvariant; scalar_t__ word; int /*<<< orphan*/  len; } ;
struct TYPE_16__ {int /*<<< orphan*/  prsId; } ;
struct TYPE_15__ {int flags; int /*<<< orphan*/  nvariant; scalar_t__ lexeme; } ;
struct TYPE_14__ {int /*<<< orphan*/  prsend; int /*<<< orphan*/  prstoken; int /*<<< orphan*/  prsstart; } ;
typedef  TYPE_2__ TSParserCacheEntry ;
typedef  TYPE_3__ TSLexeme ;
typedef  TYPE_4__ TSConfigCacheEntry ;
typedef  TYPE_5__ ParsedWord ;
typedef  TYPE_6__ ParsedText ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  LexizeData ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERRCODE_PROGRAM_LIMIT_EXCEEDED ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,char*,int) ; 
 TYPE_3__* FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,TYPE_4__*) ; 
 int MAXSTRLEN ; 
 int /*<<< orphan*/  NOTICE ; 
 int /*<<< orphan*/  FUNC10 (void*) ; 
 int TSL_ADDPOS ; 
 int TSL_PREFIX ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (char*,int) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 TYPE_4__* FUNC15 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_3__*) ; 
 scalar_t__ FUNC18 (void*,int) ; 
 int /*<<< orphan*/  FUNC19 (scalar_t__) ; 

void
FUNC20(Oid cfgId, ParsedText *prs, char *buf, int buflen)
{
	int			type,
				lenlemm;
	char	   *lemm = NULL;
	LexizeData	ldata;
	TSLexeme   *norms;
	TSConfigCacheEntry *cfg;
	TSParserCacheEntry *prsobj;
	void	   *prsdata;

	cfg = FUNC15(cfgId);
	prsobj = FUNC16(cfg->prsId);

	prsdata = (void *) FUNC1(FUNC3(&prsobj->prsstart,
													 FUNC10(buf),
													 FUNC5(buflen)));

	FUNC9(&ldata, cfg);

	do
	{
		type = FUNC0(FUNC4(&(prsobj->prstoken),
										   FUNC10(prsdata),
										   FUNC10(&lemm),
										   FUNC10(&lenlemm)));

		if (type > 0 && lenlemm >= MAXSTRLEN)
		{
#ifdef IGNORE_LONGLEXEME
			ereport(NOTICE,
					(errcode(ERRCODE_PROGRAM_LIMIT_EXCEEDED),
					 errmsg("word is too long to be indexed"),
					 errdetail("Words longer than %d characters are ignored.",
							   MAXSTRLEN)));
			continue;
#else
			FUNC11(ERROR,
					(FUNC12(ERRCODE_PROGRAM_LIMIT_EXCEEDED),
					 FUNC14("word is too long to be indexed"),
					 FUNC13("Words longer than %d characters are ignored.",
							   MAXSTRLEN)));
#endif
		}

		FUNC7(&ldata, type, lemm, lenlemm);

		while ((norms = FUNC8(&ldata, NULL)) != NULL)
		{
			TSLexeme   *ptr = norms;

			prs->pos++;			/* set pos */

			while (ptr->lexeme)
			{
				if (prs->curwords == prs->lenwords)
				{
					prs->lenwords *= 2;
					prs->words = (ParsedWord *) FUNC18((void *) prs->words, prs->lenwords * sizeof(ParsedWord));
				}

				if (ptr->flags & TSL_ADDPOS)
					prs->pos++;
				prs->words[prs->curwords].len = FUNC19(ptr->lexeme);
				prs->words[prs->curwords].word = ptr->lexeme;
				prs->words[prs->curwords].nvariant = ptr->nvariant;
				prs->words[prs->curwords].flags = ptr->flags & TSL_PREFIX;
				prs->words[prs->curwords].alen = 0;
				prs->words[prs->curwords].pos.pos = FUNC6(prs->pos);
				ptr++;
				prs->curwords++;
			}
			FUNC17(norms);
		}
	} while (type > 0);

	FUNC2(&(prsobj->prsend), FUNC10(prsdata));
}