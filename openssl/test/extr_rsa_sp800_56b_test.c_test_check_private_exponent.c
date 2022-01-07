
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RSA ;
typedef int BN_CTX ;
typedef int BIGNUM ;


 int BN_CTX_free (int *) ;
 int * BN_CTX_new () ;
 int BN_free (int *) ;
 int * BN_new () ;
 int BN_set_word (int *,int) ;
 int RSA_free (int *) ;
 int * RSA_new () ;
 int RSA_set0_factors (int *,int *,int *) ;
 int RSA_set0_key (int *,int *,int *,int *) ;
 scalar_t__ TEST_false (int ) ;
 scalar_t__ TEST_ptr (int *) ;
 scalar_t__ TEST_true (int ) ;
 int rsa_check_private_exponent (int *,int,int *) ;

__attribute__((used)) static int test_check_private_exponent(void)
{
    int ret = 0;
    RSA *key = ((void*)0);
    BN_CTX *ctx = ((void*)0);
    BIGNUM *p = ((void*)0), *q = ((void*)0), *e = ((void*)0), *d = ((void*)0), *n = ((void*)0);

    ret = TEST_ptr(key = RSA_new())
          && TEST_ptr(ctx = BN_CTX_new())
          && TEST_ptr(p = BN_new())
          && TEST_ptr(q = BN_new())

          && TEST_true(BN_set_word(p, 15))
          && TEST_true(BN_set_word(q, 17))
          && TEST_true(RSA_set0_factors(key, p, q));
    if (!ret) {
        BN_free(p);
        BN_free(q);
        goto end;
    }

    ret = TEST_ptr(e = BN_new())
          && TEST_ptr(d = BN_new())
          && TEST_ptr(n = BN_new())
          && TEST_true(BN_set_word(e, 5))
          && TEST_true(BN_set_word(d, 157))
          && TEST_true(BN_set_word(n, 15*17))
          && TEST_true(RSA_set0_key(key, n, e, d));
    if (!ret) {
        BN_free(e);
        BN_free(d);
        BN_free(n);
        goto end;
    }

    ret = TEST_false(rsa_check_private_exponent(key, 8, ctx))
          && TEST_true(BN_set_word(d, 45))

          && TEST_true(rsa_check_private_exponent(key, 8, ctx))

          && TEST_false(rsa_check_private_exponent(key, 16, ctx))

          && TEST_true(BN_set_word(d, 16))
          && TEST_false(rsa_check_private_exponent(key, 8, ctx))

          && TEST_true(BN_set_word(d, 46))
          && TEST_false(rsa_check_private_exponent(key, 8, ctx));
end:
    RSA_free(key);
    BN_CTX_free(ctx);
    return ret;
}
