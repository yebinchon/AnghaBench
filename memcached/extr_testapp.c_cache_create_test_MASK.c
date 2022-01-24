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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (char*,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static enum test_return FUNC3(void)
{
    cache_t *cache = FUNC1("test", sizeof(uint32_t), sizeof(char*),
                                  NULL, NULL);
    FUNC0(cache != NULL);
    FUNC2(cache);
    return TEST_PASS;
}