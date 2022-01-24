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
typedef  int BN_ULONG ;
typedef  int /*<<< orphan*/  BN_CTX ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  BN_RAND_BOTTOM_ANY ; 
 int /*<<< orphan*/  BN_RAND_TOP_ONE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC19(void)
{
    BIGNUM *a = NULL, *p = NULL, *m = NULL;
    BIGNUM *r = NULL;
    BN_ULONG one_word = 1;
    BN_CTX *ctx = FUNC1();
    int ret = 1, failed = 0;

    if (!FUNC16(m = FUNC9())
        || !FUNC16(a = FUNC9())
        || !FUNC16(p = FUNC9())
        || !FUNC16(r = FUNC9()))
        goto err;

    FUNC10(m);
    FUNC10(a);
    FUNC13(p);

    if (!FUNC17(FUNC12(a, 1024, BN_RAND_TOP_ONE, BN_RAND_BOTTOM_ANY)))
        goto err;

    if (!FUNC17(FUNC3(r, a, p, m, ctx)))
        goto err;

    if (!FUNC17(FUNC18("BN_mod_exp", r, a)))
        failed = 1;

    if (!FUNC17(FUNC7(r, a, p, m, ctx)))
        goto err;

    if (!FUNC17(FUNC18("BN_mod_exp_recp", r, a)))
        failed = 1;

    if (!FUNC17(FUNC8(r, a, p, m, ctx)))
        goto err;

    if (!FUNC17(FUNC18("BN_mod_exp_simple", r, a)))
        failed = 1;

    if (!FUNC17(FUNC4(r, a, p, m, ctx, NULL)))
        goto err;

    if (!FUNC17(FUNC18("BN_mod_exp_mont", r, a)))
        failed = 1;

    if (!FUNC17(FUNC5(r, a, p, m, ctx, NULL)))
        goto err;

    if (!FUNC17(FUNC18("BN_mod_exp_mont_consttime", r, a)))
        failed = 1;

    /*
     * A different codepath exists for single word multiplication
     * in non-constant-time only.
     */
    if (!FUNC17(FUNC6(r, one_word, p, m, ctx, NULL)))
        goto err;

    if (!FUNC14(r)) {
        FUNC15("BN_mod_exp_mont_word failed: "
                   "1 ** 0 mod 1 = r (should be 0)");
        FUNC11(r);
        goto err;
    }

    ret = !failed;
 err:
    FUNC2(r);
    FUNC2(a);
    FUNC2(p);
    FUNC2(m);
    FUNC0(ctx);

    return ret;
}