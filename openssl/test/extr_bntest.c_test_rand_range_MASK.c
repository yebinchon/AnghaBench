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
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  binomial_critical ; 
 int /*<<< orphan*/  rand_range_cases ; 
 scalar_t__ FUNC3 (size_t) ; 

__attribute__((used)) static int FUNC4(void)
{
    int n_success = 0;
    size_t i;

    for (i = 0; i < FUNC0(rand_range_cases); i++)
        n_success += FUNC3(i);
    if (FUNC1(n_success, binomial_critical))
        return 1;
    FUNC2("This test is expeced to fail by chance 0.01%% of the time.");
    return 0;
}