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
typedef  int Timestamp ;
typedef  int DateADT ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  ERRCODE_DATETIME_VALUE_OUT_OF_RANGE ; 
 int /*<<< orphan*/  ERROR ; 
 int POSTGRES_EPOCH_JDATE ; 
 int TIMESTAMP_END_JULIAN ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int USECS_PER_DAY ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

Timestamp
FUNC7(DateADT dateVal, int *overflow)
{
	Timestamp	result;

	if (FUNC0(dateVal))
		FUNC2(result);
	else if (FUNC1(dateVal))
		FUNC3(result);
	else
	{
		/*
		 * Date's range is wider than timestamp's, so check for boundaries.
		 * Since dates have the same minimum values as timestamps, only upper
		 * boundary need be checked for overflow.
		 */
		if (dateVal >= (TIMESTAMP_END_JULIAN - POSTGRES_EPOCH_JDATE))
		{
			if (overflow)
			{
				*overflow = 1;
				return (Timestamp) 0;
			}
			else
			{
				FUNC4(ERROR,
						(FUNC5(ERRCODE_DATETIME_VALUE_OUT_OF_RANGE),
						 FUNC6("date out of range for timestamp")));
			}
		}

		/* date is days since 2000, timestamp is microseconds since same... */
		result = dateVal * USECS_PER_DAY;
	}

	return result;
}