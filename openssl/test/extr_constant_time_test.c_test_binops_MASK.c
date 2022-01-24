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
 int /*<<< orphan*/  constant_time_eq ; 
 int /*<<< orphan*/  constant_time_ge ; 
 int /*<<< orphan*/  constant_time_lt ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,unsigned int,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,unsigned int) ; 
 unsigned int* test_values ; 

__attribute__((used)) static int FUNC3(int i)
{
    unsigned int a = test_values[i];
    int j;
    int ret = 1;

    for (j = 0; j < (int)FUNC0(test_values); ++j) {
        unsigned int b = test_values[j];

        if (!FUNC2(a, b)
                || !FUNC1(&constant_time_lt, "ct_lt",
                                   a, b, a < b)
                || !FUNC1(&constant_time_lt, "constant_time_lt",
                                   b, a, b < a)
                || !FUNC1(&constant_time_ge, "constant_time_ge",
                                   a, b, a >= b)
                || !FUNC1(&constant_time_ge, "constant_time_ge",
                                   b, a, b >= a)
                || !FUNC1(&constant_time_eq, "constant_time_eq",
                                   a, b, a == b)
                || !FUNC1(&constant_time_eq, "constant_time_eq",
                                   b, a, b == a))
            ret = 0;
    }
    return ret;
}