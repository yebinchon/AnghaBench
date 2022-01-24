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
typedef  int /*<<< orphan*/  text ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_NUMERIC_VALUE_OUT_OF_RANGE ; 
 int /*<<< orphan*/  ERRCODE_SUBSTRING_ERROR ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (int,int,int*) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,int,int,int) ; 

__attribute__((used)) static text *
FUNC7(text *t1, text *t2, int sp, int sl)
{
	text	   *result;
	text	   *s1;
	text	   *s2;
	int			sp_pl_sl;

	/*
	 * Check for possible integer-overflow cases.  For negative sp, throw a
	 * "substring length" error because that's what should be expected
	 * according to the spec's definition of OVERLAY().
	 */
	if (sp <= 0)
		FUNC1(ERROR,
				(FUNC2(ERRCODE_SUBSTRING_ERROR),
				 FUNC3("negative substring length not allowed")));
	if (FUNC4(sp, sl, &sp_pl_sl))
		FUNC1(ERROR,
				(FUNC2(ERRCODE_NUMERIC_VALUE_OUT_OF_RANGE),
				 FUNC3("integer out of range")));

	s1 = FUNC6(FUNC0(t1), 1, sp - 1, false);
	s2 = FUNC6(FUNC0(t1), sp_pl_sl, -1, true);
	result = FUNC5(s1, t2);
	result = FUNC5(result, s2);

	return result;
}