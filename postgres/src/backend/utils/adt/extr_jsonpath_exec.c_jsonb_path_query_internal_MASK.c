#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/ * user_fctx; int /*<<< orphan*/  multi_call_memory_ctx; } ;
struct TYPE_9__ {int /*<<< orphan*/  member_0; } ;
typedef  int /*<<< orphan*/  MemoryContext ;
typedef  int /*<<< orphan*/  ListCell ;
typedef  int /*<<< orphan*/  List ;
typedef  int /*<<< orphan*/  JsonbValue ;
typedef  int /*<<< orphan*/  Jsonb ;
typedef  TYPE_1__ JsonValueList ;
typedef  int /*<<< orphan*/  JsonPath ;
typedef  int /*<<< orphan*/  FunctionCallInfo ;
typedef  TYPE_2__ FuncCallContext ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/ * FUNC5 (int) ; 
 int /*<<< orphan*/ * FUNC6 (int) ; 
 TYPE_2__* FUNC7 () ; 
 scalar_t__ FUNC8 () ; 
 TYPE_2__* FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,TYPE_1__*,int) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC15 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static Datum
FUNC16(FunctionCallInfo fcinfo, bool tz)
{
	FuncCallContext *funcctx;
	List	   *found;
	JsonbValue *v;
	ListCell   *c;

	if (FUNC8())
	{
		JsonPath   *jp;
		Jsonb	   *jb;
		MemoryContext oldcontext;
		Jsonb	   *vars;
		bool		silent;
		JsonValueList found = {0};

		funcctx = FUNC7();
		oldcontext = FUNC3(funcctx->multi_call_memory_ctx);

		jb = FUNC5(0);
		jp = FUNC6(1);
		vars = FUNC5(2);
		silent = FUNC4(3);

		(void) FUNC12(jp, vars, jb, !silent, &found, tz);

		funcctx->user_fctx = FUNC0(&found);

		FUNC3(oldcontext);
	}

	funcctx = FUNC9();
	found = funcctx->user_fctx;

	c = FUNC15(found);

	if (c == NULL)
		FUNC10(funcctx);

	v = FUNC13(c);
	funcctx->user_fctx = FUNC14(found);

	FUNC11(funcctx, FUNC1(FUNC2(v)));
}