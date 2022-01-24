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
typedef  int /*<<< orphan*/  Numeric ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  int8_numeric ; 
 int /*<<< orphan*/  numeric_add ; 
 int /*<<< orphan*/  numeric_div_trunc ; 
 int /*<<< orphan*/  numeric_ge ; 
 int /*<<< orphan*/  numeric_sub ; 

__attribute__((used)) static Numeric
FUNC6(Numeric n)
{
	Datum		d = FUNC5(n);
	Datum		zero;
	Datum		one;
	Datum		two;
	Datum		result;

	zero = FUNC2(int8_numeric, FUNC4(0));
	one = FUNC2(int8_numeric, FUNC4(1));
	two = FUNC2(int8_numeric, FUNC4(2));

	if (FUNC0(FUNC3(numeric_ge, d, zero)))
		d = FUNC3(numeric_add, d, one);
	else
		d = FUNC3(numeric_sub, d, one);

	result = FUNC3(numeric_div_trunc, d, two);
	return FUNC1(result);
}