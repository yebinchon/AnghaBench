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
typedef  int StrategyNumber ;
typedef  int Datum ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
#define  RTContainedByStrategyNumber 137 
#define  RTContainsStrategyNumber 136 
#define  RTLeftStrategyNumber 135 
#define  RTOldContainedByStrategyNumber 134 
#define  RTOldContainsStrategyNumber 133 
#define  RTOverLeftStrategyNumber 132 
#define  RTOverRightStrategyNumber 131 
#define  RTOverlapStrategyNumber 130 
#define  RTRightStrategyNumber 129 
#define  RTSameStrategyNumber 128 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  seg_contained ; 
 int /*<<< orphan*/  seg_contains ; 
 int /*<<< orphan*/  seg_left ; 
 int /*<<< orphan*/  seg_over_left ; 
 int /*<<< orphan*/  seg_over_right ; 
 int /*<<< orphan*/  seg_overlap ; 
 int /*<<< orphan*/  seg_right ; 
 int /*<<< orphan*/  seg_same ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static Datum
FUNC3(Datum key, Datum query, StrategyNumber strategy)
{
	Datum		retval;

#ifdef GIST_QUERY_DEBUG
	fprintf(stderr, "leaf_consistent, %d\n", strategy);
#endif

	switch (strategy)
	{
		case RTLeftStrategyNumber:
			retval = FUNC0(seg_left, key, query);
			break;
		case RTOverLeftStrategyNumber:
			retval = FUNC0(seg_over_left, key, query);
			break;
		case RTOverlapStrategyNumber:
			retval = FUNC0(seg_overlap, key, query);
			break;
		case RTOverRightStrategyNumber:
			retval = FUNC0(seg_over_right, key, query);
			break;
		case RTRightStrategyNumber:
			retval = FUNC0(seg_right, key, query);
			break;
		case RTSameStrategyNumber:
			retval = FUNC0(seg_same, key, query);
			break;
		case RTContainsStrategyNumber:
		case RTOldContainsStrategyNumber:
			retval = FUNC0(seg_contains, key, query);
			break;
		case RTContainedByStrategyNumber:
		case RTOldContainedByStrategyNumber:
			retval = FUNC0(seg_contained, key, query);
			break;
		default:
			retval = false;
	}

	FUNC1(retval);
}