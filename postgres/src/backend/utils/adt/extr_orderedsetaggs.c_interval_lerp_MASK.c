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
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (double) ; 
 int /*<<< orphan*/  interval_mi ; 
 int /*<<< orphan*/  interval_mul ; 
 int /*<<< orphan*/  interval_pl ; 

__attribute__((used)) static Datum
FUNC2(Datum lo, Datum hi, double pct)
{
	Datum		diff_result = FUNC0(interval_mi, hi, lo);
	Datum		mul_result = FUNC0(interval_mul,
												 diff_result,
												 FUNC1(pct));

	return FUNC0(interval_pl, mul_result, lo);
}