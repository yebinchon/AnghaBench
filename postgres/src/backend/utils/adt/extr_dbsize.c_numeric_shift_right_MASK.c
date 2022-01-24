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
typedef  int /*<<< orphan*/  int64 ;
typedef  int /*<<< orphan*/  Numeric ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  int8_numeric ; 
 int /*<<< orphan*/  numeric_div_trunc ; 

__attribute__((used)) static Numeric
FUNC5(Numeric n, unsigned count)
{
	Datum		d = FUNC4(n);
	Datum		divisor_int64;
	Datum		divisor_numeric;
	Datum		result;

	divisor_int64 = FUNC3((int64) (1 << count));
	divisor_numeric = FUNC1(int8_numeric, divisor_int64);
	result = FUNC2(numeric_div_trunc, d, divisor_numeric);
	return FUNC0(result);
}