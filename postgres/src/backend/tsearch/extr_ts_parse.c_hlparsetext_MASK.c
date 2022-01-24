#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  vectorpos; } ;
struct TYPE_10__ {int /*<<< orphan*/  prsId; } ;
struct TYPE_9__ {int /*<<< orphan*/  prsend; int /*<<< orphan*/  prstoken; int /*<<< orphan*/  prsstart; } ;
typedef  int /*<<< orphan*/  TSQuery ;
typedef  TYPE_1__ TSParserCacheEntry ;
typedef  int /*<<< orphan*/  TSLexeme ;
typedef  TYPE_2__ TSConfigCacheEntry ;
typedef  int /*<<< orphan*/  ParsedLex ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  LexizeData ;
typedef  TYPE_3__ HeadlineParsedText ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERRCODE_PROGRAM_LIMIT_EXCEEDED ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,char*,int) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int MAXSTRLEN ; 
 int /*<<< orphan*/  NOTICE ; 
 int /*<<< orphan*/  FUNC9 (void*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (char*,int) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 TYPE_2__* FUNC15 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC16 (int /*<<< orphan*/ ) ; 

void
FUNC17(Oid cfgId, HeadlineParsedText *prs, TSQuery query, char *buf, int buflen)
{
	int			type,
				lenlemm;
	char	   *lemm = NULL;
	LexizeData	ldata;
	TSLexeme   *norms;
	ParsedLex  *lexs;
	TSConfigCacheEntry *cfg;
	TSParserCacheEntry *prsobj;
	void	   *prsdata;

	cfg = FUNC15(cfgId);
	prsobj = FUNC16(cfg->prsId);

	prsdata = (void *) FUNC1(FUNC3(&(prsobj->prsstart),
													 FUNC9(buf),
													 FUNC5(buflen)));

	FUNC8(&ldata, cfg);

	do
	{
		type = FUNC0(FUNC4(&(prsobj->prstoken),
										   FUNC9(prsdata),
										   FUNC9(&lemm),
										   FUNC9(&lenlemm)));

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

		FUNC6(&ldata, type, lemm, lenlemm);

		do
		{
			if ((norms = FUNC7(&ldata, &lexs)) != NULL)
			{
				prs->vectorpos++;
				FUNC10(prs, query, lexs, norms);
			}
			else
				FUNC10(prs, query, lexs, NULL);
		} while (norms);

	} while (type > 0);

	FUNC2(&(prsobj->prsend), FUNC9(prsdata));
}