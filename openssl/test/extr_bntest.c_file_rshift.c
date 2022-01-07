
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int STANZA ;
typedef int BIGNUM ;


 int BN_free (int *) ;
 int * BN_new () ;
 int BN_rshift (int *,int *,int) ;
 int BN_rshift1 (int *,int *) ;
 int TEST_ptr (int *) ;
 int TEST_true (int ) ;
 int equalBN (char*,int *,int *) ;
 int * getBN (int *,char*) ;
 int getint (int *,int*,char*) ;

__attribute__((used)) static int file_rshift(STANZA *s)
{
    BIGNUM *a = ((void*)0), *rshift = ((void*)0), *ret = ((void*)0);
    int n = 0, st = 0;

    if (!TEST_ptr(a = getBN(s, "A"))
            || !TEST_ptr(rshift = getBN(s, "RShift"))
            || !TEST_ptr(ret = BN_new())
            || !getint(s, &n, "N"))
        goto err;

    if (!TEST_true(BN_rshift(ret, a, n))
            || !equalBN("A >> N", rshift, ret))
        goto err;


    if (n == 1) {
        if (!TEST_true(BN_rshift1(ret, a))
                || !equalBN("A >> 1 (rshift1)", rshift, ret))
            goto err;
    }
    st = 1;

 err:
    BN_free(a);
    BN_free(rshift);
    BN_free(ret);
    return st;
}
