
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int STANZA ;
typedef int BIGNUM ;


 scalar_t__ BN_cmp (int *,int *) ;
 int BN_free (int *) ;
 int BN_mod_sqrt (int *,int *,int *,int ) ;
 int * BN_new () ;
 int BN_sub (int *,int *,int *) ;
 int TEST_ptr (int *) ;
 int TEST_true (int ) ;
 int ctx ;
 int equalBN (char*,int *,int *) ;
 int * getBN (int *,char*) ;

__attribute__((used)) static int file_modsqrt(STANZA *s)
{
    BIGNUM *a = ((void*)0), *p = ((void*)0), *mod_sqrt = ((void*)0), *ret = ((void*)0), *ret2 = ((void*)0);
    int st = 0;

    if (!TEST_ptr(a = getBN(s, "A"))
            || !TEST_ptr(p = getBN(s, "P"))
            || !TEST_ptr(mod_sqrt = getBN(s, "ModSqrt"))
            || !TEST_ptr(ret = BN_new())
            || !TEST_ptr(ret2 = BN_new()))
        goto err;


    if (!TEST_true(BN_mod_sqrt(ret, a, p, ctx))
            || !TEST_true(BN_sub(ret2, p, ret)))
        goto err;


    if (BN_cmp(ret2, mod_sqrt) != 0
            && !equalBN("sqrt(A) (mod P)", mod_sqrt, ret))
        goto err;

    st = 1;
 err:
    BN_free(a);
    BN_free(p);
    BN_free(mod_sqrt);
    BN_free(ret);
    BN_free(ret2);
    return st;
}
