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
 unsigned int FUNC0 (int*) ; 
 int* signed_test_values ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 

__attribute__((used)) static int FUNC4(int i)
{
    int c = signed_test_values[i];
    unsigned int j;
    int ret = 1;

    for (j = 0; j < FUNC0(signed_test_values); ++j) {
        int d = signed_test_values[j];

        if (!FUNC3(c, d)
                || !FUNC1(c, d)
                || !FUNC2(c, d))
            ret = 0;
    }
    return ret;
}