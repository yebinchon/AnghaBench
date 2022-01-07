
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int STANZA ;
typedef int BIGNUM ;


 int BN_div (int *,int *,int *,int *,int ) ;
 int BN_free (int *) ;
 int BN_mul (int *,int *,int *,int ) ;
 int * BN_new () ;
 int BN_zero (int *) ;
 int TEST_ptr (int *) ;
 int TEST_true (int ) ;
 int ctx ;
 int equalBN (char*,int *,int *) ;
 int * getBN (int *,char*) ;

__attribute__((used)) static int file_product(STANZA *s)
{
    BIGNUM *a = ((void*)0), *b = ((void*)0), *product = ((void*)0), *ret = ((void*)0);
    BIGNUM *remainder = ((void*)0), *zero = ((void*)0);
    int st = 0;

    if (!TEST_ptr(a = getBN(s, "A"))
            || !TEST_ptr(b = getBN(s, "B"))
            || !TEST_ptr(product = getBN(s, "Product"))
            || !TEST_ptr(ret = BN_new())
            || !TEST_ptr(remainder = BN_new())
            || !TEST_ptr(zero = BN_new()))
        goto err;

    BN_zero(zero);

    if (!TEST_true(BN_mul(ret, a, b, ctx))
            || !equalBN("A * B", product, ret)
            || !TEST_true(BN_div(ret, remainder, product, a, ctx))
            || !equalBN("Product / A", b, ret)
            || !equalBN("Product % A", zero, remainder)
            || !TEST_true(BN_div(ret, remainder, product, b, ctx))
            || !equalBN("Product / B", a, ret)
            || !equalBN("Product % B", zero, remainder))
        goto err;

    st = 1;
 err:
    BN_free(a);
    BN_free(b);
    BN_free(product);
    BN_free(ret);
    BN_free(remainder);
    BN_free(zero);
    return st;
}
