#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct pg_tm {int dummy; } ;
typedef  int /*<<< orphan*/  int32 ;
typedef  int /*<<< orphan*/  fsec_t ;
typedef  int /*<<< orphan*/  TimestampTz ;
struct TYPE_4__ {int /*<<< orphan*/  time; } ;
typedef  TYPE_1__ TimeTzADT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERRCODE_DATETIME_VALUE_OUT_OF_RANGE ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ FUNC5 (int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int*,struct pg_tm*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct pg_tm*,int /*<<< orphan*/ ,int,TYPE_1__*) ; 

TimeTzADT *
FUNC8(int32 typmod)
{
	TimeTzADT  *result;
	TimestampTz ts;
	struct pg_tm tt,
			   *tm = &tt;
	fsec_t		fsec;
	int			tz;

	ts = FUNC1();

	if (FUNC6(ts, &tz, tm, &fsec, NULL, NULL) != 0)
		FUNC2(ERROR,
				(FUNC3(ERRCODE_DATETIME_VALUE_OUT_OF_RANGE),
				 FUNC4("timestamp out of range")));

	result = (TimeTzADT *) FUNC5(sizeof(TimeTzADT));
	FUNC7(tm, fsec, tz, result);
	FUNC0(&(result->time), typmod);
	return result;
}