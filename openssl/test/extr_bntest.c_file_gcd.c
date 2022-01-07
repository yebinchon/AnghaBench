
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int STANZA ;
typedef int BIGNUM ;


 int BN_free (int *) ;
 int BN_gcd (int *,int *,int *,int ) ;
 int * BN_new () ;
 int TEST_ptr (int *) ;
 int TEST_true (int ) ;
 int ctx ;
 int equalBN (char*,int *,int *) ;
 int * getBN (int *,char*) ;

__attribute__((used)) static int file_gcd(STANZA *s)
{
    BIGNUM *a = ((void*)0), *b = ((void*)0), *gcd = ((void*)0), *ret = ((void*)0);
    int st = 0;

    if (!TEST_ptr(a = getBN(s, "A"))
            || !TEST_ptr(b = getBN(s, "B"))
            || !TEST_ptr(gcd = getBN(s, "GCD"))
            || !TEST_ptr(ret = BN_new()))
        goto err;

    if (!TEST_true(BN_gcd(ret, a, b, ctx))
            || !equalBN("gcd(A,B)", gcd, ret))
        goto err;

    st = 1;
 err:
    BN_free(a);
    BN_free(b);
    BN_free(gcd);
    BN_free(ret);
    return st;
}
