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
typedef  scalar_t__ uint64_t ;
typedef  enum test_return { ____Placeholder_test_return } test_return ;
typedef  int /*<<< orphan*/  cache_t ;

/* Variables and functions */
 int TEST_FAIL ; 
 int TEST_PASS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  cache_constructor ; 
 int /*<<< orphan*/ * FUNC2 (char*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__*) ; 
 scalar_t__ constructor_pattern ; 

__attribute__((used)) static enum test_return FUNC5(void)
{
    cache_t *cache = FUNC2("test", sizeof(uint64_t), sizeof(uint64_t),
                                  cache_constructor, NULL);
    FUNC0(cache != NULL);
    uint64_t *ptr = FUNC1(cache);
    uint64_t pattern = *ptr;
    FUNC4(cache, ptr);
    FUNC3(cache);
    return (pattern == constructor_pattern) ? TEST_PASS : TEST_FAIL;
}