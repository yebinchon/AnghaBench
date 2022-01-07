
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BIGNUM ;


 int BN_free (int *) ;
 int BN_lshift (int *,int ,int) ;
 int * BN_new () ;
 int BN_set_word (int *,int) ;
 int BN_sub (int *,int *,int ) ;
 int BN_value_one () ;
 scalar_t__ TEST_false (int ) ;
 scalar_t__ TEST_ptr (int *) ;
 scalar_t__ TEST_true (int ) ;
 int rsa_check_public_exponent (int *) ;

__attribute__((used)) static int test_check_public_exponent(void)
{
    int ret = 0;
    BIGNUM *e = ((void*)0);

    ret = TEST_ptr(e = BN_new())

          && TEST_true(BN_set_word(e, 65535))
          && TEST_false(rsa_check_public_exponent(e))

          && TEST_true(BN_set_word(e, 65536))
          && TEST_false(rsa_check_public_exponent(e))

          && TEST_true(BN_set_word(e, 65537))
          && TEST_true(rsa_check_public_exponent(e))

          && TEST_true(BN_lshift(e, BN_value_one(), 256))
          && TEST_false(rsa_check_public_exponent(e))

          && TEST_true(BN_sub(e, e, BN_value_one()))
          && TEST_true(rsa_check_public_exponent(e));
    BN_free(e);
    return ret;
}
