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
struct TYPE_3__ {scalar_t__ gt_opr; scalar_t__ lt_opr; } ;
typedef  TYPE_1__ TypeCacheEntry ;
typedef  int /*<<< orphan*/  StringInfo ;
typedef  scalar_t__ Oid ;
typedef  int /*<<< orphan*/  Node ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int TYPECACHE_GT_OPR ; 
 int TYPECACHE_LT_OPR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 char* FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int*) ; 
 char* FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 TYPE_1__* FUNC9 (scalar_t__,int) ; 
 char* FUNC10 (char*) ; 

__attribute__((used)) static void
FUNC11(StringInfo buf, Node *sortexpr,
					   Oid sortOperator, Oid collation, bool nullsFirst)
{
	Oid			sortcoltype = FUNC4(sortexpr);
	bool		reverse = false;
	TypeCacheEntry *typentry;

	typentry = FUNC9(sortcoltype,
								 TYPECACHE_LT_OPR | TYPECACHE_GT_OPR);

	/*
	 * Print COLLATE if it's not default for the column's type.  There are
	 * some cases where this is redundant, eg if expression is a column whose
	 * declared collation is that collation, but it's hard to distinguish that
	 * here (and arguably, printing COLLATE explicitly is a good idea anyway
	 * in such cases).
	 */
	if (FUNC0(collation) && collation != FUNC8(sortcoltype))
	{
		char	   *collname = FUNC5(collation);

		if (collname == NULL)
			FUNC3(ERROR, "cache lookup failed for collation %u", collation);
		FUNC1(buf, " COLLATE %s", FUNC10(collname));
	}

	/* Print direction if not ASC, or USING if non-default sort operator */
	if (sortOperator == typentry->gt_opr)
	{
		FUNC2(buf, " DESC");
		reverse = true;
	}
	else if (sortOperator != typentry->lt_opr)
	{
		char	   *opname = FUNC7(sortOperator);

		if (opname == NULL)
			FUNC3(ERROR, "cache lookup failed for operator %u", sortOperator);
		FUNC1(buf, " USING %s", opname);
		/* Determine whether operator would be considered ASC or DESC */
		(void) FUNC6(sortOperator, &reverse);
	}

	/* Add NULLS FIRST/LAST only if it wouldn't be default */
	if (nullsFirst && !reverse)
	{
		FUNC2(buf, " NULLS FIRST");
	}
	else if (!nullsFirst && reverse)
	{
		FUNC2(buf, " NULLS LAST");
	}
}