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
struct pg_tm {int dummy; } ;
typedef  int /*<<< orphan*/  fsec_t ;
typedef  scalar_t__ TimestampTz ;
typedef  scalar_t__ Timestamp ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct pg_tm*,int /*<<< orphan*/ ) ; 
 scalar_t__ END_TIMESTAMP ; 
 int /*<<< orphan*/  ERRCODE_DATETIME_VALUE_OUT_OF_RANGE ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ MIN_TIMESTAMP ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  session_timezone ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,int /*<<< orphan*/ *,struct pg_tm*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

TimestampTz
FUNC9(Timestamp timestamp, int *overflow)
{
	TimestampTz result;
	struct pg_tm tt,
			   *tm = &tt;
	fsec_t		fsec;
	int			tz;

	if (FUNC3(timestamp))
		return timestamp;

	if (!FUNC8(timestamp, NULL, tm, &fsec, NULL, NULL))
	{
		tz = FUNC1(tm, session_timezone);

		result = FUNC4(timestamp, -tz);

		if (FUNC2(result))
		{
			return result;
		}
		else if (overflow)
		{
			if (result < MIN_TIMESTAMP)
				*overflow = -1;
			else
			{
				FUNC0(result >= END_TIMESTAMP);
				*overflow = 1;
			}
			return (TimestampTz) 0;
		}
	}

	FUNC5(ERROR,
			(FUNC6(ERRCODE_DATETIME_VALUE_OUT_OF_RANGE),
			 FUNC7("timestamp out of range")));

	return 0;
}