
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int p3 ;
typedef int p2 ;
typedef int p1 ;
typedef int BN_CTX ;
typedef int BIGNUM ;


 int BN_CTX_free (int *) ;
 int * BN_CTX_new () ;
 int BN_free (int *) ;
 int * BN_new () ;
 int BN_set_word (int *,int) ;
 scalar_t__ TEST_false (int ) ;
 scalar_t__ TEST_ptr (int *) ;
 scalar_t__ TEST_true (int ) ;
 int * bn_load_new (unsigned char const*,int) ;
 int rsa_check_prime_factor (int *,int *,int,int *) ;

__attribute__((used)) static int test_check_prime_factor(void)
{
    int ret = 0;
    BN_CTX *ctx = ((void*)0);
    BIGNUM *p = ((void*)0), *e = ((void*)0);
    BIGNUM *bn_p1 = ((void*)0), *bn_p2 = ((void*)0), *bn_p3 = ((void*)0);


    static const unsigned char p1[] = { 0x0B, 0x50, 0x4f, 0x33, 0x73 };
    static const unsigned char p2[] = { 0x0B, 0x50, 0x4f, 0x33, 0x75 };
    static const unsigned char p3[] = { 0x0F, 0x50, 0x00, 0x03, 0x75 };

    ret = TEST_ptr(p = BN_new())
          && TEST_ptr(bn_p1 = bn_load_new(p1, sizeof(p1)))
          && TEST_ptr(bn_p2 = bn_load_new(p2, sizeof(p2)))
          && TEST_ptr(bn_p3 = bn_load_new(p3, sizeof(p3)))
          && TEST_ptr(e = BN_new())
          && TEST_ptr(ctx = BN_CTX_new())

          && TEST_true(BN_set_word(e, 0x1))
          && TEST_false(rsa_check_prime_factor(bn_p1, e, 72, ctx))

          && TEST_true(rsa_check_prime_factor(bn_p2, e, 72, ctx))

          && TEST_true(BN_set_word(e, 0x2))
          && TEST_false(rsa_check_prime_factor(p, e, 72, ctx))

          && TEST_true(BN_set_word(e, 0x1))
          && TEST_false(rsa_check_prime_factor(bn_p3, e, 72, ctx));

    BN_free(bn_p3);
    BN_free(bn_p2);
    BN_free(bn_p1);
    BN_free(e);
    BN_free(p);
    BN_CTX_free(ctx);
    return ret;
}
