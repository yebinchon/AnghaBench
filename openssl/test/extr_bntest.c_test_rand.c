
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BIGNUM ;


 int BN_free (int *) ;
 int * BN_new () ;
 int BN_rand (int *,int,int,int) ;
 int TEST_BN_eq_one (int *) ;
 int TEST_BN_eq_word (int *,int) ;
 int TEST_false (int ) ;
 int TEST_ptr (int *) ;
 int TEST_true (int ) ;

__attribute__((used)) static int test_rand(void)
{
    BIGNUM *bn = ((void*)0);
    int st = 0;

    if (!TEST_ptr(bn = BN_new()))
        return 0;


    if (!TEST_false(BN_rand(bn, 0, 0 , 0 ))
            || !TEST_false(BN_rand(bn, 0, 1 , 1 ))
            || !TEST_true(BN_rand(bn, 1, 0 , 0 ))
            || !TEST_BN_eq_one(bn)
            || !TEST_false(BN_rand(bn, 1, 1 , 0 ))
            || !TEST_true(BN_rand(bn, 1, -1 , 1 ))
            || !TEST_BN_eq_one(bn)
            || !TEST_true(BN_rand(bn, 2, 1 , 0 ))
            || !TEST_BN_eq_word(bn, 3))
        goto err;

    st = 1;
 err:
    BN_free(bn);
    return st;
}
