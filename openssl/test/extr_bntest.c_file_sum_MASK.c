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
typedef  int /*<<< orphan*/  STANZA ;
typedef  scalar_t__ BN_ULONG ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC15 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static int FUNC16(STANZA *s)
{
    BIGNUM *a = NULL, *b = NULL, *sum = NULL, *ret = NULL;
    BN_ULONG b_word;
    int st = 0;

    if (!FUNC12(a = FUNC15(s, "A"))
            || !FUNC12(b = FUNC15(s, "B"))
            || !FUNC12(sum = FUNC15(s, "Sum"))
            || !FUNC12(ret = FUNC7()))
        goto err;

    if (!FUNC13(FUNC0(ret, a, b))
            || !FUNC14("A + B", sum, ret)
            || !FUNC13(FUNC8(ret, sum, a))
            || !FUNC14("Sum - A", b, ret)
            || !FUNC13(FUNC8(ret, sum, b))
            || !FUNC14("Sum - B", a, ret))
        goto err;

    /*
     * Test that the functions work when |r| and |a| point to the same BIGNUM,
     * or when |r| and |b| point to the same BIGNUM.
     * TODO: Test where all of |r|, |a|, and |b| point to the same BIGNUM.
     */
    if (!FUNC13(FUNC3(ret, a))
            || !FUNC13(FUNC0(ret, ret, b))
            || !FUNC14("A + B (r is a)", sum, ret)
            || !FUNC13(FUNC3(ret, b))
            || !FUNC13(FUNC0(ret, a, ret))
            || !FUNC14("A + B (r is b)", sum, ret)
            || !FUNC13(FUNC3(ret, sum))
            || !FUNC13(FUNC8(ret, ret, a))
            || !FUNC14("Sum - A (r is a)", b, ret)
            || !FUNC13(FUNC3(ret, a))
            || !FUNC13(FUNC8(ret, sum, ret))
            || !FUNC14("Sum - A (r is b)", b, ret)
            || !FUNC13(FUNC3(ret, sum))
            || !FUNC13(FUNC8(ret, ret, b))
            || !FUNC14("Sum - B (r is a)", a, ret)
            || !FUNC13(FUNC3(ret, b))
            || !FUNC13(FUNC8(ret, sum, ret))
            || !FUNC14("Sum - B (r is b)", a, ret))
        goto err;

    /*
     * Test BN_uadd() and BN_usub() with the prerequisites they are
     * documented as having. Note that these functions are frequently used
     * when the prerequisites don't hold. In those cases, they are supposed
     * to work as if the prerequisite hold, but we don't test that yet.
     * TODO: test that.
     */
    if (!FUNC6(a) && !FUNC6(b) && FUNC2(a, b) >= 0) {
        if (!FUNC13(FUNC10(ret, a, b))
                || !FUNC14("A +u B", sum, ret)
                || !FUNC13(FUNC11(ret, sum, a))
                || !FUNC14("Sum -u A", b, ret)
                || !FUNC13(FUNC11(ret, sum, b))
                || !FUNC14("Sum -u B", a, ret))
            goto err;
        /*
         * Test that the functions work when |r| and |a| point to the same
         * BIGNUM, or when |r| and |b| point to the same BIGNUM.
         * TODO: Test where all of |r|, |a|, and |b| point to the same BIGNUM.
         */
        if (!FUNC13(FUNC3(ret, a))
                || !FUNC13(FUNC10(ret, ret, b))
                || !FUNC14("A +u B (r is a)", sum, ret)
                || !FUNC13(FUNC3(ret, b))
                || !FUNC13(FUNC10(ret, a, ret))
                || !FUNC14("A +u B (r is b)", sum, ret)
                || !FUNC13(FUNC3(ret, sum))
                || !FUNC13(FUNC11(ret, ret, a))
                || !FUNC14("Sum -u A (r is a)", b, ret)
                || !FUNC13(FUNC3(ret, a))
                || !FUNC13(FUNC11(ret, sum, ret))
                || !FUNC14("Sum -u A (r is b)", b, ret)
                || !FUNC13(FUNC3(ret, sum))
                || !FUNC13(FUNC11(ret, ret, b))
                || !FUNC14("Sum -u B (r is a)", a, ret)
                || !FUNC13(FUNC3(ret, b))
                || !FUNC13(FUNC11(ret, sum, ret))
                || !FUNC14("Sum -u B (r is b)", a, ret))
            goto err;
    }

    /*
     * Test with BN_add_word() and BN_sub_word() if |b| is small enough.
     */
    b_word = FUNC5(b);
    if (!FUNC6(b) && b_word != (BN_ULONG)-1) {
        if (!FUNC13(FUNC3(ret, a))
                || !FUNC13(FUNC1(ret, b_word))
                || !FUNC14("A + B (word)", sum, ret)
                || !FUNC13(FUNC3(ret, sum))
                || !FUNC13(FUNC9(ret, b_word))
                || !FUNC14("Sum - B (word)", a, ret))
            goto err;
    }
    st = 1;

 err:
    FUNC4(a);
    FUNC4(b);
    FUNC4(sum);
    FUNC4(ret);
    return st;
}