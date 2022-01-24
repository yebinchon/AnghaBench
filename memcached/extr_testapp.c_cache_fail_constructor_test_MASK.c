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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  enum test_return { ____Placeholder_test_return } test_return ;
typedef  int /*<<< orphan*/  cache_t ;

/* Variables and functions */
 int TEST_FAIL ; 
 int TEST_PASS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  cache_fail_constructor ; 

__attribute__((used)) static enum test_return FUNC4(void)
{
    enum test_return ret = TEST_PASS;

    cache_t *cache = FUNC2("test", sizeof(uint64_t), sizeof(uint64_t),
                                  cache_fail_constructor, NULL);
    FUNC0(cache != NULL);
    uint64_t *ptr = FUNC1(cache);
    if (ptr != NULL) {
        ret = TEST_FAIL;
    }
    FUNC3(cache);
    return ret;
}