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
typedef  int /*<<< orphan*/  TimestampTz ;
typedef  int /*<<< orphan*/  Timestamp ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_DATETIME_VALUE_OUT_OF_RANGE ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int*,struct pg_tm*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (struct pg_tm*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static Timestamp
FUNC6(TimestampTz timestamp)
{
	Timestamp	result;
	struct pg_tm tt,
			   *tm = &tt;
	fsec_t		fsec;
	int			tz;

	if (FUNC0(timestamp))
		result = timestamp;
	else
	{
		if (FUNC4(timestamp, &tz, tm, &fsec, NULL, NULL) != 0)
			FUNC1(ERROR,
					(FUNC2(ERRCODE_DATETIME_VALUE_OUT_OF_RANGE),
					 FUNC3("timestamp out of range")));
		if (FUNC5(tm, fsec, NULL, &result) != 0)
			FUNC1(ERROR,
					(FUNC2(ERRCODE_DATETIME_VALUE_OUT_OF_RANGE),
					 FUNC3("timestamp out of range")));
	}
	return result;
}