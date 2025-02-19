
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BN_MONT_CTX ;
typedef int BIGNUM ;


 int BN_MONT_CTX_free (int *) ;
 int * BN_MONT_CTX_new () ;
 int BN_MONT_CTX_set (int *,int *,int ) ;
 int BN_bntest_rand (int *,int,int ,int) ;
 int * BN_dup (int *) ;
 int BN_free (int *) ;
 int BN_from_montgomery (int *,int *,int *,int ) ;
 int BN_hex2bn (int **,char*) ;
 int BN_mod_exp_mont (int *,int *,int *,int *,int ,int *) ;
 int BN_mod_exp_mont_consttime (int *,int *,int *,int *,int ,int *) ;
 int BN_mod_exp_simple (int *,int *,int *,int *,int ) ;
 int BN_mod_mul_montgomery (int *,int *,int *,int *,int ) ;
 int * BN_new () ;
 int BN_one (int *) ;
 int BN_zero (int *) ;
 scalar_t__ TEST_BN_eq (int *,int *) ;
 int TEST_BN_eq_one (int *) ;
 int TEST_BN_eq_zero (int *) ;
 scalar_t__ TEST_false (int ) ;
 scalar_t__ TEST_ptr (int *) ;
 scalar_t__ TEST_true (int ) ;
 char const** bn1strings ;
 char const** bn2strings ;
 int ctx ;
 int parse_bigBN (int **,char const**) ;

__attribute__((used)) static int test_modexp_mont5(void)
{
    BIGNUM *a = ((void*)0), *p = ((void*)0), *m = ((void*)0), *d = ((void*)0), *e = ((void*)0);
    BIGNUM *b = ((void*)0), *n = ((void*)0), *c = ((void*)0);
    BN_MONT_CTX *mont = ((void*)0);
    int st = 0;

    if (!TEST_ptr(a = BN_new())
            || !TEST_ptr(p = BN_new())
            || !TEST_ptr(m = BN_new())
            || !TEST_ptr(d = BN_new())
            || !TEST_ptr(e = BN_new())
            || !TEST_ptr(b = BN_new())
            || !TEST_ptr(n = BN_new())
            || !TEST_ptr(c = BN_new())
            || !TEST_ptr(mont = BN_MONT_CTX_new()))
        goto err;


    if (!(TEST_true(BN_bntest_rand(m, 1024, 0, 1))

            && TEST_true(BN_bntest_rand(a, 1024, 0, 0))))
        goto err;
    BN_zero(p);

    if (!TEST_true(BN_mod_exp_mont_consttime(d, a, p, m, ctx, ((void*)0))))
        goto err;
    if (!TEST_BN_eq_one(d))
        goto err;


    if (!(TEST_true(BN_hex2bn(&a,
        "7878787878787878787878787878787878787878787878787878787878787878"
        "7878787878787878787878787878787878787878787878787878787878787878"
        "7878787878787878787878787878787878787878787878787878787878787878"
        "7878787878787878787878787878787878787878787878787878787878787878"))
        && TEST_true(BN_hex2bn(&b,
        "095D72C08C097BA488C5E439C655A192EAFB6380073D8C2664668EDDB4060744"
        "E16E57FB4EDB9AE10A0CEFCDC28A894F689A128379DB279D48A2E20849D68593"
        "9B7803BCF46CEBF5C533FB0DD35B080593DE5472E3FE5DB951B8BFF9B4CB8F03"
        "9CC638A5EE8CDD703719F8000E6A9F63BEED5F2FCD52FF293EA05A251BB4AB81"))
        && TEST_true(BN_hex2bn(&n,
        "D78AF684E71DB0C39CFF4E64FB9DB567132CB9C50CC98009FEB820B26F2DED9B"
        "91B9B5E2B83AE0AE4EB4E0523CA726BFBE969B89FD754F674CE99118C3F2D1C5"
        "D81FDC7C54E02B60262B241D53C040E99E45826ECA37A804668E690E1AFC1CA4"
        "2C9A15D84D4954425F0B7642FC0BD9D7B24E2618D2DCC9B729D944BADACFDDAF"))))
        goto err;

    if (!(TEST_true(BN_MONT_CTX_set(mont, n, ctx))
            && TEST_true(BN_mod_mul_montgomery(c, a, b, mont, ctx))
            && TEST_true(BN_mod_mul_montgomery(d, b, a, mont, ctx))
            && TEST_BN_eq(c, d)))
        goto err;


    if (!(TEST_true(parse_bigBN(&n, bn1strings))
            && TEST_true(parse_bigBN(&a, bn2strings))))
        goto err;
    BN_free(b);
    if (!(TEST_ptr(b = BN_dup(a))
            && TEST_true(BN_MONT_CTX_set(mont, n, ctx))
            && TEST_true(BN_mod_mul_montgomery(c, a, a, mont, ctx))
            && TEST_true(BN_mod_mul_montgomery(d, a, b, mont, ctx))
            && TEST_BN_eq(c, d)))
        goto err;


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
            ((void*)0)
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
            ((void*)0)
        };

        if (!(TEST_true(parse_bigBN(&a, ahex))
                && TEST_true(parse_bigBN(&n, nhex))))
            goto err;
    }
    BN_free(b);
    if (!(TEST_ptr(b = BN_dup(a))
            && TEST_true(BN_MONT_CTX_set(mont, n, ctx))))
        goto err;

    if (!TEST_true(BN_mod_mul_montgomery(c, a, a, mont, ctx))
            || !TEST_true(BN_mod_mul_montgomery(d, a, b, mont, ctx))
            || !TEST_BN_eq(c, d))
        goto err;


    if (!(TEST_true(BN_hex2bn(&a,
        "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
        "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
        "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"))
         && TEST_true(BN_hex2bn(&n,
        "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
        "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"))
        && TEST_true(BN_MONT_CTX_set(mont, n, ctx))
        && TEST_false(BN_mod_mul_montgomery(d, a, a, mont, ctx))))
        goto err;


    if (!(TEST_true(BN_hex2bn(&a,
        "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
        "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
        "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
        "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2020202020DF"))
        && TEST_true(BN_hex2bn(&b,
        "2020202020202020202020202020202020202020202020202020202020202020"
        "2020202020202020202020202020202020202020202020202020202020202020"
        "20202020202020FF202020202020202020202020202020202020202020202020"
        "2020202020202020202020202020202020202020202020202020202020202020"))
        && TEST_true(BN_hex2bn(&n,
        "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
        "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
        "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
        "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2020202020FF"))
        && TEST_true(BN_MONT_CTX_set(mont, n, ctx))
        && TEST_true(BN_mod_exp_mont_consttime(c, a, b, n, ctx, mont))
        && TEST_true(BN_mod_exp_mont(d, a, b, n, ctx, mont))
        && TEST_BN_eq(c, d)))
        goto err;





    if (!(TEST_true(BN_hex2bn(&a,
        "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
        "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
        "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
        "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2020202020DF"))
        && TEST_true(BN_hex2bn(&b,
        "1FA53F26F8811C58BE0357897AA5E165693230BC9DF5F01DFA6A2D59229EC69D"
        "9DE6A89C36E3B6957B22D6FAAD5A3C73AE587B710DBE92E83D3A9A3339A085CB"
        "B58F508CA4F837924BB52CC1698B7FDC2FD74362456A595A5B58E38E38E38E38"
        "E38E38E38E38E38E38E38E38E38E38E38E38E38E38E38E38E38E38E38E38E38E"))
        && TEST_true(BN_hex2bn(&n,
        "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
        "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
        "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
        "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2020202020DF"))
        && TEST_true(BN_MONT_CTX_set(mont, n, ctx))
        && TEST_true(BN_mod_exp_mont_consttime(c, a, b, n, ctx, mont))))
        goto err;
    BN_zero(d);
    if (!TEST_BN_eq(c, d))
        goto err;


    if (!TEST_true(BN_bntest_rand(p, 1024, 0, 0)))
        goto err;
    BN_zero(a);
    if (!TEST_true(BN_mod_exp_mont_consttime(d, a, p, m, ctx, ((void*)0)))
            || !TEST_BN_eq_zero(d))
        goto err;






    if (!(TEST_true(BN_one(a))
            && TEST_true(BN_MONT_CTX_set(mont, m, ctx))))
        goto err;
    if (!TEST_true(BN_from_montgomery(e, a, mont, ctx))
            || !TEST_true(BN_mod_exp_mont_consttime(d, e, p, m, ctx, ((void*)0)))
            || !TEST_true(BN_mod_exp_simple(a, e, p, m, ctx))
            || !TEST_BN_eq(a, d))
        goto err;


    if (!(TEST_true(BN_bntest_rand(e, 1024, 0, 0))
            && TEST_true(BN_mod_exp_mont_consttime(d, e, p, m, ctx, ((void*)0)))
            && TEST_true(BN_mod_exp_simple(a, e, p, m, ctx))
            && TEST_BN_eq(a, d)))
        goto err;

    st = 1;

 err:
    BN_MONT_CTX_free(mont);
    BN_free(a);
    BN_free(p);
    BN_free(m);
    BN_free(d);
    BN_free(e);
    BN_free(b);
    BN_free(n);
    BN_free(c);
    return st;
}
