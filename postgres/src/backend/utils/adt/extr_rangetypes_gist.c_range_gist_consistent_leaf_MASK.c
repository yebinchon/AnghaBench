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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
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
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC12(TypeCacheEntry *typcache, StrategyNumber strategy,
						   const RangeType *key, Datum query)
{
	switch (strategy)
	{
		case RANGESTRAT_BEFORE:
			return FUNC4(typcache, key,
										 FUNC0(query));
		case RANGESTRAT_OVERLEFT:
			return FUNC10(typcache, key,
										   FUNC0(query));
		case RANGESTRAT_OVERLAPS:
			return FUNC9(typcache, key,
										   FUNC0(query));
		case RANGESTRAT_OVERRIGHT:
			return FUNC11(typcache, key,
											FUNC0(query));
		case RANGESTRAT_AFTER:
			return FUNC3(typcache, key,
										FUNC0(query));
		case RANGESTRAT_ADJACENT:
			return FUNC2(typcache, key,
										   FUNC0(query));
		case RANGESTRAT_CONTAINS:
			return FUNC7(typcache, key,
										   FUNC0(query));
		case RANGESTRAT_CONTAINED_BY:
			return FUNC5(typcache, key,
											   FUNC0(query));
		case RANGESTRAT_CONTAINS_ELEM:
			return FUNC6(typcache, key, query);
		case RANGESTRAT_EQ:
			return FUNC8(typcache, key, FUNC0(query));
		default:
			FUNC1(ERROR, "unrecognized range strategy: %d", strategy);
			return false;		/* keep compiler quiet */
	}
}