
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int STANZA ;
typedef int BIGNUM ;


 int BN_exp (int *,int *,int *,int ) ;
 int BN_free (int *) ;
 int * BN_new () ;
 int TEST_ptr (int *) ;
 int TEST_true (int ) ;
 int ctx ;
 int equalBN (char*,int *,int *) ;
 int * getBN (int *,char*) ;

__attribute__((used)) static int file_exp(STANZA *s)
{
    BIGNUM *a = ((void*)0), *e = ((void*)0), *exp = ((void*)0), *ret = ((void*)0);
    int st = 0;

    if (!TEST_ptr(a = getBN(s, "A"))
            || !TEST_ptr(e = getBN(s, "E"))
            || !TEST_ptr(exp = getBN(s, "Exp"))
            || !TEST_ptr(ret = BN_new()))
        goto err;

    if (!TEST_true(BN_exp(ret, a, e, ctx))
            || !equalBN("A ^ E", exp, ret))
        goto err;

    st = 1;
 err:
    BN_free(a);
    BN_free(e);
    BN_free(exp);
    BN_free(ret);
    return st;
}
