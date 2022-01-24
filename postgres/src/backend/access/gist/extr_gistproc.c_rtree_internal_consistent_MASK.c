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
typedef  int /*<<< orphan*/  BOX ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
#define  RTAboveStrategyNumber 141 
#define  RTBelowStrategyNumber 140 
#define  RTContainedByStrategyNumber 139 
#define  RTContainsStrategyNumber 138 
#define  RTLeftStrategyNumber 137 
#define  RTOldContainedByStrategyNumber 136 
#define  RTOldContainsStrategyNumber 135 
#define  RTOverAboveStrategyNumber 134 
#define  RTOverBelowStrategyNumber 133 
#define  RTOverLeftStrategyNumber 132 
#define  RTOverRightStrategyNumber 131 
#define  RTOverlapStrategyNumber 130 
#define  RTRightStrategyNumber 129 
#define  RTSameStrategyNumber 128 
 int /*<<< orphan*/  box_above ; 
 int /*<<< orphan*/  box_below ; 
 int /*<<< orphan*/  box_contain ; 
 int /*<<< orphan*/  box_left ; 
 int /*<<< orphan*/  box_overabove ; 
 int /*<<< orphan*/  box_overbelow ; 
 int /*<<< orphan*/  box_overlap ; 
 int /*<<< orphan*/  box_overleft ; 
 int /*<<< orphan*/  box_overright ; 
 int /*<<< orphan*/  box_right ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static bool
FUNC4(BOX *key, BOX *query, StrategyNumber strategy)
{
	bool		retval;

	switch (strategy)
	{
		case RTLeftStrategyNumber:
			retval = !FUNC0(FUNC1(box_overright,
													   FUNC2(key),
													   FUNC2(query)));
			break;
		case RTOverLeftStrategyNumber:
			retval = !FUNC0(FUNC1(box_right,
													   FUNC2(key),
													   FUNC2(query)));
			break;
		case RTOverlapStrategyNumber:
			retval = FUNC0(FUNC1(box_overlap,
													  FUNC2(key),
													  FUNC2(query)));
			break;
		case RTOverRightStrategyNumber:
			retval = !FUNC0(FUNC1(box_left,
													   FUNC2(key),
													   FUNC2(query)));
			break;
		case RTRightStrategyNumber:
			retval = !FUNC0(FUNC1(box_overleft,
													   FUNC2(key),
													   FUNC2(query)));
			break;
		case RTSameStrategyNumber:
		case RTContainsStrategyNumber:
		case RTOldContainsStrategyNumber:
			retval = FUNC0(FUNC1(box_contain,
													  FUNC2(key),
													  FUNC2(query)));
			break;
		case RTContainedByStrategyNumber:
		case RTOldContainedByStrategyNumber:
			retval = FUNC0(FUNC1(box_overlap,
													  FUNC2(key),
													  FUNC2(query)));
			break;
		case RTOverBelowStrategyNumber:
			retval = !FUNC0(FUNC1(box_above,
													   FUNC2(key),
													   FUNC2(query)));
			break;
		case RTBelowStrategyNumber:
			retval = !FUNC0(FUNC1(box_overabove,
													   FUNC2(key),
													   FUNC2(query)));
			break;
		case RTAboveStrategyNumber:
			retval = !FUNC0(FUNC1(box_overbelow,
													   FUNC2(key),
													   FUNC2(query)));
			break;
		case RTOverAboveStrategyNumber:
			retval = !FUNC0(FUNC1(box_below,
													   FUNC2(key),
													   FUNC2(query)));
			break;
		default:
			FUNC3(ERROR, "unrecognized strategy number: %d", strategy);
			retval = false;		/* keep compiler quiet */
			break;
	}
	return retval;
}