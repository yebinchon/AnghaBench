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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  enum test_return { ____Placeholder_test_return } test_return ;
typedef  int /*<<< orphan*/  cache_t ;

/* Variables and functions */
 int TEST_PASS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 char* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static enum test_return FUNC5(void)
{
    int ii;
    cache_t *cache = FUNC2("test", sizeof(uint32_t), sizeof(char*),
                                  NULL, NULL);
    char *ptr = FUNC1(cache);
    FUNC4(cache, ptr);
    for (ii = 0; ii < 100; ++ii) {
        char *p = FUNC1(cache);
        FUNC0(p == ptr);
        FUNC4(cache, ptr);
    }
    FUNC3(cache);
    return TEST_PASS;
}