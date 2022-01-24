#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_4__* TupleDesc ;
struct TYPE_10__ {int /*<<< orphan*/  base_typmod; int /*<<< orphan*/  base_typid; int /*<<< orphan*/  tupdesc; } ;
struct TYPE_11__ {TYPE_1__ composite; } ;
struct TYPE_12__ {TYPE_2__ io; } ;
struct TYPE_14__ {TYPE_3__ c; int /*<<< orphan*/  fn_mcxt; int /*<<< orphan*/  argtype; } ;
struct TYPE_13__ {int /*<<< orphan*/  tdtypmod; int /*<<< orphan*/  tdtypeid; } ;
typedef  TYPE_5__ PopulateRecordCache ;
typedef  int /*<<< orphan*/  MemoryContext ;
typedef  int /*<<< orphan*/  FunctionCallInfo ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  ERRCODE_FEATURE_NOT_SUPPORTED ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ TYPEFUNC_COMPOSITE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char const*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_4__**) ; 

__attribute__((used)) static void
FUNC9(FunctionCallInfo fcinfo,
						   const char *funcname,
						   PopulateRecordCache *cache)
{
	TupleDesc	tupdesc;
	MemoryContext old_cxt;

	if (FUNC8(fcinfo, NULL, &tupdesc) != TYPEFUNC_COMPOSITE)
		FUNC4(ERROR,
				(FUNC5(ERRCODE_FEATURE_NOT_SUPPORTED),
		/* translator: %s is a function name, eg json_to_record */
				 FUNC7("could not determine row type for result of %s",
						funcname),
				 FUNC6("Provide a non-null record argument, "
						 "or call the function in the FROM clause "
						 "using a column definition list.")));

	FUNC0(tupdesc);
	cache->argtype = tupdesc->tdtypeid;

	/* If we go through this more than once, avoid memory leak */
	if (cache->c.io.composite.tupdesc)
		FUNC2(cache->c.io.composite.tupdesc);

	/* Save identified tupdesc */
	old_cxt = FUNC3(cache->fn_mcxt);
	cache->c.io.composite.tupdesc = FUNC1(tupdesc);
	cache->c.io.composite.base_typid = tupdesc->tdtypeid;
	cache->c.io.composite.base_typmod = tupdesc->tdtypmod;
	FUNC3(old_cxt);
}