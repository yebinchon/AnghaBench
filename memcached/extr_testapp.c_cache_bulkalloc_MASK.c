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
typedef  enum test_return { ____Placeholder_test_return } test_return ;
typedef  int /*<<< orphan*/  cache_t ;

/* Variables and functions */
 int ITERATIONS ; 
 int TEST_PASS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 void* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,size_t,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC5 (void*,int,size_t) ; 

__attribute__((used)) static enum test_return FUNC6(size_t datasize)
{
    cache_t *cache = FUNC2("test", datasize, sizeof(char*),
                                  NULL, NULL);
#define ITERATIONS 1024
    void *ptr[ITERATIONS];

    for (int ii = 0; ii < ITERATIONS; ++ii) {
        ptr[ii] = FUNC1(cache);
        FUNC0(ptr[ii] != 0);
        FUNC5(ptr[ii], 0xff, datasize);
    }

    for (int ii = 0; ii < ITERATIONS; ++ii) {
        FUNC4(cache, ptr[ii]);
    }

#undef ITERATIONS
    FUNC3(cache);
    return TEST_PASS;
}