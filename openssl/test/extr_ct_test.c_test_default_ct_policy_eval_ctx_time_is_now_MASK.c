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
typedef  int time_t ;
typedef  int /*<<< orphan*/  CT_POLICY_EVAL_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int const) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int const) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(void)
{
    int success = 0;
    CT_POLICY_EVAL_CTX *ct_policy_ctx = FUNC2();
    const time_t default_time =
        (time_t)(FUNC1(ct_policy_ctx) / 1000);
    const time_t time_tolerance = 600;  /* 10 minutes */

    if (!FUNC3(FUNC4((int)FUNC5(FUNC6(NULL), default_time)),
                        time_tolerance))
        goto end;

    success = 1;
end:
    FUNC0(ct_policy_ctx);
    return success;
}