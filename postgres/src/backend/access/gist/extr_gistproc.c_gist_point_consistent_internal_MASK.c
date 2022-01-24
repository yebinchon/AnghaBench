#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;
struct TYPE_7__ {int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;
struct TYPE_10__ {TYPE_2__ low; TYPE_1__ high; } ;
struct TYPE_9__ {int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;
typedef  int StrategyNumber ;
typedef  TYPE_3__ Point ;
typedef  TYPE_4__ BOX ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
#define  RTAboveStrategyNumber 132 
#define  RTBelowStrategyNumber 131 
#define  RTLeftStrategyNumber 130 
#define  RTRightStrategyNumber 129 
#define  RTSameStrategyNumber 128 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static bool
FUNC6(StrategyNumber strategy,
							   bool isLeaf, BOX *key, Point *query)
{
	bool		result = false;

	switch (strategy)
	{
		case RTLeftStrategyNumber:
			result = FUNC4(key->low.x, query->x);
			break;
		case RTRightStrategyNumber:
			result = FUNC2(key->high.x, query->x);
			break;
		case RTAboveStrategyNumber:
			result = FUNC2(key->high.y, query->y);
			break;
		case RTBelowStrategyNumber:
			result = FUNC4(key->low.y, query->y);
			break;
		case RTSameStrategyNumber:
			if (isLeaf)
			{
				/* key.high must equal key.low, so we can disregard it */
				result = (FUNC0(key->low.x, query->x) &&
						  FUNC0(key->low.y, query->y));
			}
			else
			{
				result = (FUNC3(query->x, key->high.x) &&
						  FUNC1(query->x, key->low.x) &&
						  FUNC3(query->y, key->high.y) &&
						  FUNC1(query->y, key->low.y));
			}
			break;
		default:
			FUNC5(ERROR, "unrecognized strategy number: %d", strategy);
			result = false;		/* keep compiler quiet */
			break;
	}

	return result;
}