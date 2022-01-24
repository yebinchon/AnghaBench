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
typedef  int /*<<< orphan*/  int32 ;
typedef  int /*<<< orphan*/  NumericVar ;
typedef  int /*<<< orphan*/  Numeric ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_FEATURE_NOT_SUPPORTED ; 
 int /*<<< orphan*/  ERRCODE_NUMERIC_VALUE_OUT_OF_RANGE ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int32
FUNC6(Numeric num, bool *have_error)
{
	NumericVar	x;
	int32		result;

	if (have_error)
		*have_error = false;

	/* XXX would it be better to return NULL? */
	if (FUNC0(num))
	{
		if (have_error)
		{
			*have_error = true;
			return 0;
		}
		else
		{
			FUNC1(ERROR,
					(FUNC2(ERRCODE_FEATURE_NOT_SUPPORTED),
					 FUNC3("cannot convert NaN to integer")));
		}
	}

	/* Convert to variable format, then convert to int4 */
	FUNC4(num, &x);

	if (!FUNC5(&x, &result))
	{
		if (have_error)
		{
			*have_error = true;
			return 0;
		}
		else
		{
			FUNC1(ERROR,
					(FUNC2(ERRCODE_NUMERIC_VALUE_OUT_OF_RANGE),
					 FUNC3("integer out of range")));
		}
	}

	return result;
}