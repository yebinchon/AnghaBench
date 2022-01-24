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
typedef  int /*<<< orphan*/  BN_MONT_CTX ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/ ) ; 
 char const** bn1strings ; 
 char const** bn2strings ; 
 int /*<<< orphan*/  ctx ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ **,char const**) ; 

__attribute__((used)) static int FUNC22(void)
{
    BIGNUM *a = NULL, *p = NULL, *m = NULL, *d = NULL, *e = NULL;
    BIGNUM *b = NULL, *n = NULL, *c = NULL;
    BN_MONT_CTX *mont = NULL;
    int st = 0;

    if (!FUNC19(a = FUNC12())
            || !FUNC19(p = FUNC12())
            || !FUNC19(m = FUNC12())
            || !FUNC19(d = FUNC12())
            || !FUNC19(e = FUNC12())
            || !FUNC19(b = FUNC12())
            || !FUNC19(n = FUNC12())
            || !FUNC19(c = FUNC12())
            || !FUNC19(mont = FUNC1()))
        goto err;

    /* must be odd for montgomery */
    if (!(FUNC20(FUNC3(m, 1024, 0, 1))
            /* Zero exponent */
            && FUNC20(FUNC3(a, 1024, 0, 0))))
        goto err;
    FUNC14(p);

    if (!FUNC20(FUNC9(d, a, p, m, ctx, NULL)))
        goto err;
    if (!FUNC16(d))
        goto err;

    /* Regression test for carry bug in mulx4x_mont */
    if (!(FUNC20(FUNC7(&a,
        "7878787878787878787878787878787878787878787878787878787878787878"
        "7878787878787878787878787878787878787878787878787878787878787878"
        "7878787878787878787878787878787878787878787878787878787878787878"
        "7878787878787878787878787878787878787878787878787878787878787878"))
        && FUNC20(FUNC7(&b,
        "095D72C08C097BA488C5E439C655A192EAFB6380073D8C2664668EDDB4060744"
        "E16E57FB4EDB9AE10A0CEFCDC28A894F689A128379DB279D48A2E20849D68593"
        "9B7803BCF46CEBF5C533FB0DD35B080593DE5472E3FE5DB951B8BFF9B4CB8F03"
        "9CC638A5EE8CDD703719F8000E6A9F63BEED5F2FCD52FF293EA05A251BB4AB81"))
        && FUNC20(FUNC7(&n,
        "D78AF684E71DB0C39CFF4E64FB9DB567132CB9C50CC98009FEB820B26F2DED9B"
        "91B9B5E2B83AE0AE4EB4E0523CA726BFBE969B89FD754F674CE99118C3F2D1C5"
        "D81FDC7C54E02B60262B241D53C040E99E45826ECA37A804668E690E1AFC1CA4"
        "2C9A15D84D4954425F0B7642FC0BD9D7B24E2618D2DCC9B729D944BADACFDDAF"))))
        goto err;

    if (!(FUNC20(FUNC2(mont, n, ctx))
            && FUNC20(FUNC11(c, a, b, mont, ctx))
            && FUNC20(FUNC11(d, b, a, mont, ctx))
            && FUNC15(c, d)))
        goto err;

    /* Regression test for carry bug in sqr[x]8x_mont */
    if (!(FUNC20(FUNC21(&n, bn1strings))
            && FUNC20(FUNC21(&a, bn2strings))))
        goto err;
    FUNC5(b);
    if (!(FUNC19(b = FUNC4(a))
            && FUNC20(FUNC2(mont, n, ctx))
            && FUNC20(FUNC11(c, a, a, mont, ctx))
            && FUNC20(FUNC11(d, a, b, mont, ctx))
            && FUNC15(c, d)))
        goto err;

    /* Regression test for carry bug in bn_sqrx8x_internal */
    {
        static const char *ahex[] = {
                      "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
            "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
            "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
            "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
            "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8FFEADBCFC4DAE7FFF908E92820306B",
            "9544D954000000006C0000000000000000000000000000000000000000000000",
            "00000000000000000000FF030202FFFFF8FFEBDBCFC4DAE7FFF908E92820306B",
            "9544D954000000006C000000FF0302030000000000FFFFFFFFFFFFFFFFFFFFFF",
            "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF01FC00FF02FFFFFFFF",
            "00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FCFD",
            "FCFFFFFFFFFF000000000000000000FF0302030000000000FFFFFFFFFFFFFFFF",
            "FF00FCFDFDFF030202FF00000000FFFFFFFFFFFFFFFFFF00FCFDFCFFFFFFFFFF",
            NULL
        };
        static const char *nhex[] = {
                      "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
            "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
            "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
            "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
            "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F8F8F8000000",
            "00000010000000006C0000000000000000000000000000000000000000000000",
            "00000000000000000000000000000000000000FFFFFFFFFFFFF8F8F8F8000000",
            "00000010000000006C000000000000000000000000FFFFFFFFFFFFFFFFFFFFFF",
            "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
            "00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
            "FFFFFFFFFFFF000000000000000000000000000000000000FFFFFFFFFFFFFFFF",
            "FFFFFFFFFFFFFFFFFFFF00000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
            NULL
        };

        if (!(FUNC20(FUNC21(&a, ahex))
                && FUNC20(FUNC21(&n, nhex))))
            goto err;
    }
    FUNC5(b);
    if (!(FUNC19(b = FUNC4(a))
            && FUNC20(FUNC2(mont, n, ctx))))
        goto err;

    if (!FUNC20(FUNC11(c, a, a, mont, ctx))
            || !FUNC20(FUNC11(d, a, b, mont, ctx))
            || !FUNC15(c, d))
        goto err;

    /* Regression test for bug in BN_from_montgomery_word */
    if (!(FUNC20(FUNC7(&a,
        "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
        "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
        "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"))
         && FUNC20(FUNC7(&n,
        "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
        "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"))
        && FUNC20(FUNC2(mont, n, ctx))
        && FUNC18(FUNC11(d, a, a, mont, ctx))))
        goto err;

    /* Regression test for bug in rsaz_1024_mul_avx2 */
    if (!(FUNC20(FUNC7(&a,
        "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
        "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
        "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
        "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2020202020DF"))
        && FUNC20(FUNC7(&b,
        "2020202020202020202020202020202020202020202020202020202020202020"
        "2020202020202020202020202020202020202020202020202020202020202020"
        "20202020202020FF202020202020202020202020202020202020202020202020"
        "2020202020202020202020202020202020202020202020202020202020202020"))
        && FUNC20(FUNC7(&n,
        "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
        "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
        "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
        "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2020202020FF"))
        && FUNC20(FUNC2(mont, n, ctx))
        && FUNC20(FUNC9(c, a, b, n, ctx, mont))
        && FUNC20(FUNC8(d, a, b, n, ctx, mont))
        && FUNC15(c, d)))
        goto err;

    /*
     * rsaz_1024_mul_avx2 expects fully-reduced inputs.
     * BN_mod_exp_mont_consttime should reduce the input first.
     */
    if (!(FUNC20(FUNC7(&a,
        "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
        "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
        "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
        "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2020202020DF"))
        && FUNC20(FUNC7(&b,
        "1FA53F26F8811C58BE0357897AA5E165693230BC9DF5F01DFA6A2D59229EC69D"
        "9DE6A89C36E3B6957B22D6FAAD5A3C73AE587B710DBE92E83D3A9A3339A085CB"
        "B58F508CA4F837924BB52CC1698B7FDC2FD74362456A595A5B58E38E38E38E38"
        "E38E38E38E38E38E38E38E38E38E38E38E38E38E38E38E38E38E38E38E38E38E"))
        && FUNC20(FUNC7(&n,
        "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
        "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
        "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
        "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2020202020DF"))
        && FUNC20(FUNC2(mont, n, ctx))
        && FUNC20(FUNC9(c, a, b, n, ctx, mont))))
        goto err;
    FUNC14(d);
    if (!FUNC15(c, d))
        goto err;

    /* Zero input */
    if (!FUNC20(FUNC3(p, 1024, 0, 0)))
        goto err;
    FUNC14(a);
    if (!FUNC20(FUNC9(d, a, p, m, ctx, NULL))
            || !FUNC17(d))
        goto err;

    /*
     * Craft an input whose Montgomery representation is 1, i.e., shorter
     * than the modulus m, in order to test the const time precomputation
     * scattering/gathering.
     */
    if (!(FUNC20(FUNC13(a))
            && FUNC20(FUNC2(mont, m, ctx))))
        goto err;
    if (!FUNC20(FUNC6(e, a, mont, ctx))
            || !FUNC20(FUNC9(d, e, p, m, ctx, NULL))
            || !FUNC20(FUNC10(a, e, p, m, ctx))
            || !FUNC15(a, d))
        goto err;

    /* Finally, some regular test vectors. */
    if (!(FUNC20(FUNC3(e, 1024, 0, 0))
            && FUNC20(FUNC9(d, e, p, m, ctx, NULL))
            && FUNC20(FUNC10(a, e, p, m, ctx))
            && FUNC15(a, d)))
        goto err;

    st = 1;

 err:
    FUNC0(mont);
    FUNC5(a);
    FUNC5(p);
    FUNC5(m);
    FUNC5(d);
    FUNC5(e);
    FUNC5(b);
    FUNC5(n);
    FUNC5(c);
    return st;
}