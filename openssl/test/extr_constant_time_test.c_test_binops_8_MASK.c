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
 scalar_t__ FUNC0 (unsigned int*) ; 
 int /*<<< orphan*/  constant_time_eq_8 ; 
 int /*<<< orphan*/  constant_time_ge_8 ; 
 int /*<<< orphan*/  constant_time_lt_8 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,unsigned int,unsigned int,int) ; 
 unsigned int* test_values_8 ; 

__attribute__((used)) static int FUNC2(int i)
{
    unsigned int a = test_values_8[i];
    int j;
    int ret = 1;

    for (j = 0; j < (int)FUNC0(test_values_8); ++j) {
        unsigned int b = test_values_8[j];

        if (!FUNC1(&constant_time_lt_8, "constant_time_lt_8",
                                     a, b, a < b)
                || !FUNC1(&constant_time_lt_8, "constant_time_lt_8",
                                     b, a, b < a)
                || !FUNC1(&constant_time_ge_8, "constant_time_ge_8",
                                     a, b, a >= b)
                || !FUNC1(&constant_time_ge_8, "constant_time_ge_8",
                                     b, a, b >= a)
                || !FUNC1(&constant_time_eq_8, "constant_time_eq_8",
                                     a, b, a == b)
                || !FUNC1(&constant_time_eq_8, "constant_time_eq_8",
                                     b, a, b == a))
            ret = 0;
    }
    return ret;
}