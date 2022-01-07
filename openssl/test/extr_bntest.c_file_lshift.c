
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int STANZA ;
typedef int BIGNUM ;


 int BN_free (int *) ;
 int BN_lshift (int *,int *,int) ;
 int * BN_new () ;
 int BN_rshift (int *,int *,int) ;
 int TEST_ptr (int *) ;
 int TEST_true (int ) ;
 int equalBN (char*,int *,int *) ;
 int * getBN (int *,char*) ;
 int getint (int *,int*,char*) ;

__attribute__((used)) static int file_lshift(STANZA *s)
{
    BIGNUM *a = ((void*)0), *lshift = ((void*)0), *ret = ((void*)0);
    int n = 0, st = 0;

    if (!TEST_ptr(a = getBN(s, "A"))
            || !TEST_ptr(lshift = getBN(s, "LShift"))
            || !TEST_ptr(ret = BN_new())
            || !getint(s, &n, "N"))
        goto err;

    if (!TEST_true(BN_lshift(ret, a, n))
            || !equalBN("A << N", lshift, ret)
            || !TEST_true(BN_rshift(ret, lshift, n))
            || !equalBN("A >> N", a, ret))
        goto err;

    st = 1;
 err:
    BN_free(a);
    BN_free(lshift);
    BN_free(ret);
    return st;
}
