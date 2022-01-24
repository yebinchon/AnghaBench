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
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int) ; 
 int FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int NUM0 ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 
 int /*<<< orphan*/  FUNC16 (int,int) ; 
 int /*<<< orphan*/  FUNC17 (int,int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ctx ; 
 int FUNC20 () ; 

__attribute__((used)) static int FUNC21(void)
{
    BIGNUM *a = NULL, *b = NULL, *r = NULL, *t = NULL;
    int i, legendre, kronecker, st = 0;

    if (!FUNC18(a = FUNC10())
            || !FUNC18(b = FUNC10())
            || !FUNC18(r = FUNC10())
            || !FUNC18(t = FUNC10()))
        goto err;

    /*
     * We test BN_kronecker(a, b, ctx) just for b odd (Jacobi symbol). In
     * this case we know that if b is prime, then BN_kronecker(a, b, ctx) is
     * congruent to $a^{(b-1)/2}$, modulo $b$ (Legendre symbol). So we
     * generate a random prime b and compare these values for a number of
     * random a's.  (That is, we run the Solovay-Strassen primality test to
     * confirm that b is prime, except that we don't want to test whether b
     * is prime but whether BN_kronecker works.)
     */

    if (!FUNC19(FUNC4(b, 512, 0, NULL, NULL, NULL)))
        goto err;
    FUNC12(b, FUNC20());

    for (i = 0; i < NUM0; i++) {
        if (!FUNC19(FUNC1(a, 512, 0, 0)))
            goto err;
        FUNC12(a, FUNC20());

        /* t := (|b|-1)/2  (note that b is odd) */
        if (!FUNC19(FUNC2(t, b)))
            goto err;
        FUNC12(t, 0);
        if (!FUNC19(FUNC13(t, 1)))
            goto err;
        if (!FUNC19(FUNC11(t, t)))
            goto err;
        /* r := a^t mod b */
        FUNC12(b, 0);

        if (!FUNC19(FUNC9(r, a, t, b, ctx)))
            goto err;
        FUNC12(b, 1);

        if (FUNC6(r, 1))
            legendre = 1;
        else if (FUNC7(r))
            legendre = 0;
        else {
            if (!FUNC19(FUNC0(r, 1)))
                goto err;
            if (!FUNC16(FUNC14(r, b), 0)) {
                FUNC15("Legendre symbol computation failed");
                goto err;
            }
            legendre = -1;
        }

        if (!FUNC17(kronecker = FUNC8(a, b, ctx), -1))
            goto err;
        /* we actually need BN_kronecker(a, |b|) */
        if (FUNC5(a) && FUNC5(b))
            kronecker = -kronecker;

        if (!FUNC16(legendre, kronecker))
            goto err;
    }

    st = 1;
 err:
    FUNC3(a);
    FUNC3(b);
    FUNC3(r);
    FUNC3(t);
    return st;
}