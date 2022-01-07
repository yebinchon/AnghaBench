
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BIGNUM ;


 int BN_free (int *) ;
 int * BN_new () ;
 int BN_set_word (int *,int) ;
 scalar_t__ TEST_false (int ) ;
 scalar_t__ TEST_ptr (int *) ;
 scalar_t__ TEST_true (int ) ;
 int rsa_check_pminusq_diff (int *,int *,int *,int) ;

__attribute__((used)) static int test_pq_diff(void)
{
    int ret = 0;
    BIGNUM *tmp = ((void*)0), *p = ((void*)0), *q = ((void*)0);

    ret = TEST_ptr(tmp = BN_new())
          && TEST_ptr(p = BN_new())
          && TEST_ptr(q = BN_new())

          && TEST_true(BN_set_word(p, 1))
          && TEST_true(BN_set_word(q, 1+2))
          && TEST_false(rsa_check_pminusq_diff(tmp, p, q, 202))

          && TEST_true(BN_set_word(q, 1+3))
          && TEST_true(rsa_check_pminusq_diff(tmp, p, q, 202))
          && TEST_true(BN_set_word(p, 1+3))
          && TEST_true(BN_set_word(q, 1))
          && TEST_true(rsa_check_pminusq_diff(tmp, p, q, 202));
    BN_free(p);
    BN_free(q);
    BN_free(tmp);
    return ret;
}
