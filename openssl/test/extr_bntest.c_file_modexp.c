
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int STANZA ;
typedef int BIGNUM ;


 int BN_free (int *) ;
 int BN_hex2bn (int **,char*) ;
 scalar_t__ BN_is_odd (int *) ;
 int BN_mod_exp (int *,int *,int *,int *,int ) ;
 int BN_mod_exp_mont (int *,int *,int *,int *,int ,int *) ;
 int BN_mod_exp_mont_consttime (int *,int *,int *,int *,int ,int *) ;
 int BN_mul (int *,int *,int *,int ) ;
 int * BN_new () ;
 int TEST_BN_eq (int *,int *) ;
 int TEST_ptr (int *) ;
 int TEST_true (int ) ;
 int ctx ;
 int equalBN (char*,int *,int *) ;
 int * getBN (int *,char*) ;

__attribute__((used)) static int file_modexp(STANZA *s)
{
    BIGNUM *a = ((void*)0), *e = ((void*)0), *m = ((void*)0), *mod_exp = ((void*)0), *ret = ((void*)0);
    BIGNUM *b = ((void*)0), *c = ((void*)0), *d = ((void*)0);
    int st = 0;

    if (!TEST_ptr(a = getBN(s, "A"))
            || !TEST_ptr(e = getBN(s, "E"))
            || !TEST_ptr(m = getBN(s, "M"))
            || !TEST_ptr(mod_exp = getBN(s, "ModExp"))
            || !TEST_ptr(ret = BN_new())
            || !TEST_ptr(d = BN_new()))
        goto err;

    if (!TEST_true(BN_mod_exp(ret, a, e, m, ctx))
            || !equalBN("A ^ E (mod M)", mod_exp, ret))
        goto err;

    if (BN_is_odd(m)) {
        if (!TEST_true(BN_mod_exp_mont(ret, a, e, m, ctx, ((void*)0)))
                || !equalBN("A ^ E (mod M) (mont)", mod_exp, ret)
                || !TEST_true(BN_mod_exp_mont_consttime(ret, a, e, m,
                                                        ctx, ((void*)0)))
                || !equalBN("A ^ E (mod M) (mont const", mod_exp, ret))
            goto err;
    }


    BN_hex2bn(&a, "050505050505");
    BN_hex2bn(&b, "02");
    BN_hex2bn(&c,
        "4141414141414141414141274141414141414141414141414141414141414141"
        "4141414141414141414141414141414141414141414141414141414141414141"
        "4141414141414141414141800000000000000000000000000000000000000000"
        "0000000000000000000000000000000000000000000000000000000000000000"
        "0000000000000000000000000000000000000000000000000000000000000000"
        "0000000000000000000000000000000000000000000000000000000001");
    if (!TEST_true(BN_mod_exp(d, a, b, c, ctx))
        || !TEST_true(BN_mul(e, a, a, ctx))
        || !TEST_BN_eq(d, e))
        goto err;

    st = 1;
 err:
    BN_free(a);
    BN_free(b);
    BN_free(c);
    BN_free(d);
    BN_free(e);
    BN_free(m);
    BN_free(mod_exp);
    BN_free(ret);
    return st;
}
