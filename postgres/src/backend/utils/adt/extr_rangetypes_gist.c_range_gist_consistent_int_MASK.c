#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  TypeCacheEntry ;
typedef  int StrategyNumber ;
typedef  int /*<<< orphan*/  RangeType ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  const* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERROR ; 
#define  RANGESTRAT_ADJACENT 137 
#define  RANGESTRAT_AFTER 136 
#define  RANGESTRAT_BEFORE 135 
#define  RANGESTRAT_CONTAINED_BY 134 
#define  RANGESTRAT_CONTAINS 133 
#define  RANGESTRAT_CONTAINS_ELEM 132 
#define  RANGESTRAT_EQ 131 
#define  RANGESTRAT_OVERLAPS 130 
#define  RANGESTRAT_OVERLEFT 129 
#define  RANGESTRAT_OVERRIGHT 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*) ; 
 int FUNC2 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 

__attribute__((used)) static bool
FUNC12(TypeCacheEntry *typcache, StrategyNumber strategy,
						  const RangeType *key, Datum query)
{
	switch (strategy)
	{
		case RANGESTRAT_BEFORE:
			if (FUNC1(key) || FUNC1(FUNC0(query)))
				return false;
			return (!FUNC11(typcache, key,
											  FUNC0(query)));
		case RANGESTRAT_OVERLEFT:
			if (FUNC1(key) || FUNC1(FUNC0(query)))
				return false;
			return (!FUNC5(typcache, key,
										  FUNC0(query)));
		case RANGESTRAT_OVERLAPS:
			return FUNC9(typcache, key,
										   FUNC0(query));
		case RANGESTRAT_OVERRIGHT:
			if (FUNC1(key) || FUNC1(FUNC0(query)))
				return false;
			return (!FUNC6(typcache, key,
										   FUNC0(query)));
		case RANGESTRAT_AFTER:
			if (FUNC1(key) || FUNC1(FUNC0(query)))
				return false;
			return (!FUNC10(typcache, key,
											 FUNC0(query)));
		case RANGESTRAT_ADJACENT:
			if (FUNC1(key) || FUNC1(FUNC0(query)))
				return false;
			if (FUNC4(typcache, key,
										FUNC0(query)))
				return true;
			return FUNC9(typcache, key,
										   FUNC0(query));
		case RANGESTRAT_CONTAINS:
			return FUNC8(typcache, key,
										   FUNC0(query));
		case RANGESTRAT_CONTAINED_BY:

			/*
			 * Empty ranges are contained by anything, so if key is or
			 * contains any empty ranges, we must descend into it.  Otherwise,
			 * descend only if key overlaps the query.
			 */
			if (FUNC2(key))
				return true;
			return FUNC9(typcache, key,
										   FUNC0(query));
		case RANGESTRAT_CONTAINS_ELEM:
			return FUNC7(typcache, key, query);
		case RANGESTRAT_EQ:

			/*
			 * If query is empty, descend only if the key is or contains any
			 * empty ranges.  Otherwise, descend if key contains query.
			 */
			if (FUNC1(FUNC0(query)))
				return FUNC2(key);
			return FUNC8(typcache, key,
										   FUNC0(query));
		default:
			FUNC3(ERROR, "unrecognized range strategy: %d", strategy);
			return false;		/* keep compiler quiet */
	}
}