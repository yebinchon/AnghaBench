#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  text ;
typedef  int /*<<< orphan*/  TupleDesc ;
struct TYPE_11__ {int /*<<< orphan*/  attinmeta; void* user_fctx; int /*<<< orphan*/  multi_call_memory_ctx; } ;
struct TYPE_10__ {char* lexeme; int type; } ;
struct TYPE_9__ {size_t cur; int len; TYPE_3__* list; } ;
struct TYPE_8__ {int /*<<< orphan*/  prsend; int /*<<< orphan*/  prstoken; int /*<<< orphan*/  prsstart; } ;
typedef  TYPE_1__ TSParserCacheEntry ;
typedef  TYPE_2__ PrsStorage ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  MemoryContext ;
typedef  TYPE_3__ LexemeEntry ;
typedef  TYPE_4__ FuncCallContext ;
typedef  int /*<<< orphan*/  AttrNumber ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  INT4OID ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (void*) ; 
 int /*<<< orphan*/  TEXTOID ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 void* FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (char*,char*,int) ; 
 char* FUNC15 (int) ; 
 scalar_t__ FUNC16 (TYPE_3__*,int) ; 

__attribute__((used)) static void
FUNC17(FuncCallContext *funcctx, Oid prsid, text *txt)
{
	TupleDesc	tupdesc;
	MemoryContext oldcontext;
	PrsStorage *st;
	TSParserCacheEntry *prs = FUNC13(prsid);
	char	   *lex = NULL;
	int			llen = 0,
				type = 0;
	void	   *prsdata;

	oldcontext = FUNC7(funcctx->multi_call_memory_ctx);

	st = (PrsStorage *) FUNC15(sizeof(PrsStorage));
	st->cur = 0;
	st->len = 16;
	st->list = (LexemeEntry *) FUNC15(sizeof(LexemeEntry) * st->len);

	prsdata = (void *) FUNC2(FUNC4(&prs->prsstart,
													 FUNC8(FUNC11(txt)),
													 FUNC6(FUNC12(txt))));

	while ((type = FUNC1(FUNC5(&prs->prstoken,
											   FUNC8(prsdata),
											   FUNC8(&lex),
											   FUNC8(&llen)))) != 0)
	{
		if (st->cur >= st->len)
		{
			st->len = 2 * st->len;
			st->list = (LexemeEntry *) FUNC16(st->list, sizeof(LexemeEntry) * st->len);
		}
		st->list[st->cur].lexeme = FUNC15(llen + 1);
		FUNC14(st->list[st->cur].lexeme, lex, llen);
		st->list[st->cur].lexeme[llen] = '\0';
		st->list[st->cur].type = type;
		st->cur++;
	}

	FUNC3(&prs->prsend, FUNC8(prsdata));

	st->len = st->cur;
	st->cur = 0;

	funcctx->user_fctx = (void *) st;
	tupdesc = FUNC0(2);
	FUNC10(tupdesc, (AttrNumber) 1, "tokid",
					   INT4OID, -1, 0);
	FUNC10(tupdesc, (AttrNumber) 2, "token",
					   TEXTOID, -1, 0);

	funcctx->attinmeta = FUNC9(tupdesc);
	FUNC7(oldcontext);
}