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
struct TYPE_3__ {int /*<<< orphan*/  hash_proc; int /*<<< orphan*/  gt_opr; int /*<<< orphan*/  eq_opr; int /*<<< orphan*/  lt_opr; } ;
typedef  TYPE_1__ TypeCacheEntry ;
typedef  int /*<<< orphan*/  Oid ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_UNDEFINED_FUNCTION ; 
 int /*<<< orphan*/  ERROR ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int TYPECACHE_EQ_OPR ; 
 int TYPECACHE_GT_OPR ; 
 int TYPECACHE_HASH_PROC ; 
 int TYPECACHE_LT_OPR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ ,int) ; 

void
FUNC7(Oid argtype,
						 bool needLT, bool needEQ, bool needGT,
						 Oid *ltOpr, Oid *eqOpr, Oid *gtOpr,
						 bool *isHashable)
{
	TypeCacheEntry *typentry;
	int			cache_flags;
	Oid			lt_opr;
	Oid			eq_opr;
	Oid			gt_opr;
	bool		hashable;

	/*
	 * Look up the operators using the type cache.
	 *
	 * Note: the search algorithm used by typcache.c ensures that the results
	 * are consistent, ie all from matching opclasses.
	 */
	if (isHashable != NULL)
		cache_flags = TYPECACHE_LT_OPR | TYPECACHE_EQ_OPR | TYPECACHE_GT_OPR |
			TYPECACHE_HASH_PROC;
	else
		cache_flags = TYPECACHE_LT_OPR | TYPECACHE_EQ_OPR | TYPECACHE_GT_OPR;

	typentry = FUNC6(argtype, cache_flags);
	lt_opr = typentry->lt_opr;
	eq_opr = typentry->eq_opr;
	gt_opr = typentry->gt_opr;
	hashable = FUNC0(typentry->hash_proc);

	/* Report errors if needed */
	if ((needLT && !FUNC0(lt_opr)) ||
		(needGT && !FUNC0(gt_opr)))
		FUNC1(ERROR,
				(FUNC2(ERRCODE_UNDEFINED_FUNCTION),
				 FUNC4("could not identify an ordering operator for type %s",
						FUNC5(argtype)),
				 FUNC3("Use an explicit ordering operator or modify the query.")));
	if (needEQ && !FUNC0(eq_opr))
		FUNC1(ERROR,
				(FUNC2(ERRCODE_UNDEFINED_FUNCTION),
				 FUNC4("could not identify an equality operator for type %s",
						FUNC5(argtype))));

	/* Return results as needed */
	if (ltOpr)
		*ltOpr = lt_opr;
	if (eqOpr)
		*eqOpr = eq_opr;
	if (gtOpr)
		*gtOpr = gt_opr;
	if (isHashable)
		*isHashable = hashable;
}