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

/* Variables and functions */
 int PHP_ROUND_HALF_DOWN ; 
 int PHP_ROUND_HALF_EVEN ; 
 int PHP_ROUND_HALF_ODD ; 
 int FUNC0 (double) ; 
 int FUNC1 (double) ; 

__attribute__((used)) static inline double FUNC2(double value, int mode) {
	double tmp_value;

	if (value >= 0.0) {
		tmp_value = FUNC1(value + 0.5);
		if ((mode == PHP_ROUND_HALF_DOWN && value == (-0.5 + tmp_value)) ||
			(mode == PHP_ROUND_HALF_EVEN && value == (0.5 + 2 * FUNC1(tmp_value/2.0))) ||
			(mode == PHP_ROUND_HALF_ODD  && value == (0.5 + 2 * FUNC1(tmp_value/2.0) - 1.0)))
		{
			tmp_value = tmp_value - 1.0;
		}
	} else {
		tmp_value = FUNC0(value - 0.5);
		if ((mode == PHP_ROUND_HALF_DOWN && value == (0.5 + tmp_value)) ||
			(mode == PHP_ROUND_HALF_EVEN && value == (-0.5 + 2 * FUNC0(tmp_value/2.0))) ||
			(mode == PHP_ROUND_HALF_ODD  && value == (-0.5 + 2 * FUNC0(tmp_value/2.0) + 1.0)))
		{
			tmp_value = tmp_value + 1.0;
		}
	}

	return tmp_value;
}