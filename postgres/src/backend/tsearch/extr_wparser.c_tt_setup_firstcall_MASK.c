#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  TupleDesc ;
struct TYPE_8__ {int /*<<< orphan*/  attinmeta; void* user_fctx; int /*<<< orphan*/  multi_call_memory_ctx; } ;
struct TYPE_7__ {int /*<<< orphan*/  lextypeOid; } ;
struct TYPE_6__ {int /*<<< orphan*/ * list; scalar_t__ cur; } ;
typedef  TYPE_1__ TSTokenTypeStorage ;
typedef  TYPE_2__ TSParserCacheEntry ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  MemoryContext ;
typedef  int /*<<< orphan*/  LexDescr ;
typedef  TYPE_3__ FuncCallContext ;
typedef  int /*<<< orphan*/  Datum ;
typedef  int /*<<< orphan*/  AttrNumber ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  INT4OID ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TEXTOID ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int) ; 

__attribute__((used)) static void
FUNC10(FuncCallContext *funcctx, Oid prsid)
{
	TupleDesc	tupdesc;
	MemoryContext oldcontext;
	TSTokenTypeStorage *st;
	TSParserCacheEntry *prs = FUNC8(prsid);

	if (!FUNC4(prs->lextypeOid))
		FUNC7(ERROR, "method lextype isn't defined for text search parser %u",
			 prsid);

	oldcontext = FUNC2(funcctx->multi_call_memory_ctx);

	st = (TSTokenTypeStorage *) FUNC9(sizeof(TSTokenTypeStorage));
	st->cur = 0;
	/* lextype takes one dummy argument */
	st->list = (LexDescr *) FUNC1(FUNC3(prs->lextypeOid,
															 (Datum) 0));
	funcctx->user_fctx = (void *) st;

	tupdesc = FUNC0(3);
	FUNC6(tupdesc, (AttrNumber) 1, "tokid",
					   INT4OID, -1, 0);
	FUNC6(tupdesc, (AttrNumber) 2, "alias",
					   TEXTOID, -1, 0);
	FUNC6(tupdesc, (AttrNumber) 3, "description",
					   TEXTOID, -1, 0);

	funcctx->attinmeta = FUNC5(tupdesc);
	FUNC2(oldcontext);
}