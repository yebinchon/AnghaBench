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
 scalar_t__ FUNC0 (size_t*) ; 
 int /*<<< orphan*/  constant_time_eq_s ; 
 int /*<<< orphan*/  constant_time_ge_s ; 
 int /*<<< orphan*/  constant_time_lt_s ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,size_t,size_t,int) ; 
 int /*<<< orphan*/  FUNC2 (size_t,size_t) ; 
 int /*<<< orphan*/  FUNC3 (size_t,size_t) ; 
 size_t* test_values_s ; 

__attribute__((used)) static int FUNC4(int i)
{
    size_t a = test_values_s[i];
    int j;
    int ret = 1;

    for (j = 0; j < (int)FUNC0(test_values_s); ++j) {
        size_t b = test_values_s[j];

        if (!FUNC3(a, b)
                || !FUNC2(a, b)
                || !FUNC1(&constant_time_lt_s, "constant_time_lt_s",
                                     a, b, a < b)
                || !FUNC1(&constant_time_lt_s, "constant_time_lt_s",
                                     b, a, b < a)
                || !FUNC1(&constant_time_ge_s, "constant_time_ge_s",
                                     a, b, a >= b)
                || !FUNC1(&constant_time_ge_s, "constant_time_ge_s",
                                     b, a, b >= a)
                || !FUNC1(&constant_time_eq_s, "constant_time_eq_s",
                                     a, b, a == b)
                || !FUNC1(&constant_time_eq_s, "constant_time_eq_s",
                                     b, a, b == a))
            ret = 0;
    }
    return ret;
}