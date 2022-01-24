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
struct sigaction {int /*<<< orphan*/  sa_mask; int /*<<< orphan*/  sa_flags; int /*<<< orphan*/  sa_handler; } ;
typedef  enum test_return { ____Placeholder_test_return } test_return ;
typedef  int /*<<< orphan*/  cache_t ;

/* Variables and functions */
 int /*<<< orphan*/  SIGABRT ; 
 int /*<<< orphan*/  SIG_IGN ; 
 int TEST_PASS ; 
 int TEST_SKIP ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 char* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int cache_error ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct sigaction*,struct sigaction*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static enum test_return FUNC7(void)
{
#ifndef HAVE_UMEM_H
    cache_t *cache = FUNC2("test", sizeof(uint32_t), sizeof(char*),
                                  NULL, NULL);

    /* Ignore SIGABRT */
    struct sigaction old_action;
    struct sigaction action = { .sa_handler = SIG_IGN, .sa_flags = 0};
    FUNC6(&action.sa_mask);
    FUNC5(SIGABRT, &action, &old_action);

    /* check memory debug.. */
    char *p = FUNC1(cache);
    char old = *(p - 1);
    *(p - 1) = 0;
    FUNC4(cache, p);
    FUNC0(cache_error == -1);
    *(p - 1) = old;

    p[sizeof(uint32_t)] = 0;
    FUNC4(cache, p);
    FUNC0(cache_error == 1);

    /* restore signal handler */
    FUNC5(SIGABRT, &old_action, NULL);

    FUNC3(cache);

    return TEST_PASS;
#else
    return TEST_SKIP;
#endif
}