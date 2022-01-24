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
typedef  int /*<<< orphan*/  bytea ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_NUMERIC_VALUE_OUT_OF_RANGE ; 
 int /*<<< orphan*/  ERRCODE_SUBSTRING_ERROR ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 scalar_t__ FUNC6 (int,int,int*) ; 

__attribute__((used)) static bytea *
FUNC7(bytea *t1, bytea *t2, int sp, int sl)
{
	bytea	   *result;
	bytea	   *s1;
	bytea	   *s2;
	int			sp_pl_sl;

	/*
	 * Check for possible integer-overflow cases.  For negative sp, throw a
	 * "substring length" error because that's what should be expected
	 * according to the spec's definition of OVERLAY().
	 */
	if (sp <= 0)
		FUNC3(ERROR,
				(FUNC4(ERRCODE_SUBSTRING_ERROR),
				 FUNC5("negative substring length not allowed")));
	if (FUNC6(sp, sl, &sp_pl_sl))
		FUNC3(ERROR,
				(FUNC4(ERRCODE_NUMERIC_VALUE_OUT_OF_RANGE),
				 FUNC5("integer out of range")));

	s1 = FUNC2(FUNC0(t1), 1, sp - 1, false);
	s2 = FUNC2(FUNC0(t1), sp_pl_sl, -1, true);
	result = FUNC1(s1, t2);
	result = FUNC1(result, s2);

	return result;
}