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
typedef  int /*<<< orphan*/  NDBOX ;

/* Variables and functions */
#define  RTContainedByStrategyNumber 133 
#define  RTContainsStrategyNumber 132 
#define  RTOldContainedByStrategyNumber 131 
#define  RTOldContainsStrategyNumber 130 
#define  RTOverlapStrategyNumber 129 
#define  RTSameStrategyNumber 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

bool
FUNC3(NDBOX *key,
					   NDBOX *query,
					   StrategyNumber strategy)
{
	bool		retval;

	switch (strategy)
	{
		case RTOverlapStrategyNumber:
			retval = FUNC2(key, query);
			break;
		case RTSameStrategyNumber:
			retval = (FUNC0(key, query) == 0);
			break;
		case RTContainsStrategyNumber:
		case RTOldContainsStrategyNumber:
			retval = FUNC1(key, query);
			break;
		case RTContainedByStrategyNumber:
		case RTOldContainedByStrategyNumber:
			retval = FUNC1(query, key);
			break;
		default:
			retval = false;
	}
	return retval;
}