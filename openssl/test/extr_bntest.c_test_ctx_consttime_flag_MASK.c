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
typedef  int /*<<< orphan*/  BN_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(void)
{
    /*-
     * The constant-time flag should not "leak" among BN_CTX frames:
     *
     * - test_ctx_set_ct_flag() starts a frame in the given BN_CTX and
     *   sets the BN_FLG_CONSTTIME flag on some of the BIGNUMs obtained
     *   from the frame before ending it.
     * - test_ctx_check_ct_flag() then starts a new frame and gets a
     *   number of BIGNUMs from it. In absence of leaks, none of the
     *   BIGNUMs in the new frame should have BN_FLG_CONSTTIME set.
     *
     * In actual BN_CTX usage inside libcrypto the leak could happen at
     * any depth level in the BN_CTX stack, with varying results
     * depending on the patterns of sibling trees of nested function
     * calls sharing the same BN_CTX object, and the effect of
     * unintended BN_FLG_CONSTTIME on the called BN_* functions.
     *
     * This simple unit test abstracts away this complexity and verifies
     * that the leak does not happen between two sibling functions
     * sharing the same BN_CTX object at the same level of nesting.
     *
     */
    BN_CTX *nctx = NULL;
    BN_CTX *sctx = NULL;
    size_t i = 0;
    int st = 0;

    if (!FUNC3(nctx = FUNC1())
            || !FUNC3(sctx = FUNC2()))
        goto err;

    for (i = 0; i < 2; i++) {
        BN_CTX *c = i == 0 ? nctx : sctx;
        if (!FUNC4(FUNC6(c))
                || !FUNC4(FUNC5(c)))
            goto err;
    }

    st = 1;
 err:
    FUNC0(nctx);
    FUNC0(sctx);
    return st;
}